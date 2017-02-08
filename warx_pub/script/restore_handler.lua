module("restore_handler", package.seeall)
function load_player()
    local db = dbmng:getOne()
    local info = db.player:find({})
    local count = 0
    local total = 0
    while info:hasNext() do
        local data = info:next()
        if data.tm_login > (data.tm_logout or 0) then data.tm_logout = gTime - 1 end
        if (not data.culture) or data.culture < 1 or data.culture > 4 then data.culture = 1 end

        if  data.pid and data.account then
            local token = data.token
            data.token = nil

            local p = player_t.new(data)
            player_t._cache[ data.pid ] = nil
            rawset( p, "token", token )
            rawset(p, "eid", data.eid)
            rawset(p, "size", 4)
            rawset(p, "uname", "")
            
            gEtys[ p.eid ] = p

            count = count + 1
            if count >= 100 then
                total = total + 100
                LOG("load player %d", total)
                count = 0
            end
        end
    end
    total = total + count
end


function load_build()
    local db = dbmng:getOne()
    local info = db.build_t:find({})
    local count = 0
    while info:hasNext() do
        local b = info:next()
        local p = getPlayer(b.pid)
        if p then
            local bs = p._build
            if not bs then
                bs = {}
                p._build = bs
            end
            bs[ b.idx ] = build_t.wrap(b)
            count = count + 1
            if count % 10000 == 0 then
                LOG("load build %d", count)
            end
        else
            print( string.format( "building %s have not player %s", b._id, b.pid ) )
        end
    end
end

function load_troop()
    local db = dbmng:getOne()
    db.troop:delete({delete=true})

    local datas = {}

    local info = db.troop:find({})
    local maxSn = 0
    while info:hasNext() do
        local tr = info:next()
        for _, arm in pairs( tr.arms or {} ) do
            local valid = true
            for id, num in pairs( arm.live_soldier or {} ) do
                if num < 1 then 
                    valid = false
                    break 
                end
            end
            if not valid then
                local live = {}
                for id, num in pairs( arm.live_soldier or {} ) do
                    if num >= 1 then 
                        live[ id ] = num
                    end
                end
                arm.live_soldier = live
            end
        end
        local pid = tr.owner_pid
        if not tr.arms then tr.arms = {} end
        if not tr.arms[ pid ] then tr.arms[ pid ] = { live_soldier={} } end
        if tr._id > maxSn then maxSn = tr._id end

        troop_t.wrap( tr )
        datas[ tr._id ] = tr
    end
    _G.gSns[ "troop" ] = maxSn + 1
    troop_mng.troop_id_map = datas
end


function load_equip()
    for _, v in pairs( gPlys ) do v._equip = {} end

    local db = dbmng:getOne()
    db.equip:delete({pos=-1})

    local info = db.equip:find({})
    while info:hasNext() do
        local t = info:next()
        local ply = getPlayer( t.pid )
        if ply then
            ply._equip[ t._id ] = t
        end
    end
end


function load_room()
    for k, v in pairs(unionmng._us) do v.battle_room_ids = {} end

    local db = dbmng:getOne()
    db.room:delete({delete=true})

    local info = db.room:find({})
    while info:hasNext() do
        union_hall_t.load_data(info:next())
    end
end

function load_clown()
    for k, v in pairs(resmng.prop_world_unit) do
        if v.Class == CLASS_UNIT.CLOWN then
            local eid = get_eid_npc_city()
            if eid then
                local c = {_id=eid, eid=eid, x=v.X, y=v.Y, propid=k, size=v.Size, uid=0}
                gEtys[ eid ] = c
                etypipe.add(c)
            end
        end
    end
end

function load_hero()
    local db = dbmng:getOne()
    local info = db.hero_t:find({})
    while info:hasNext() do
        local b = info:next()
        local p = getPlayer(b.pid)
        if p then
            if not p._hero then p._hero = {} end
            local hero = hero_t.wrap(b)
            p._hero[ b.idx ] = hero
            heromng.add_hero(hero)
        end
    end
end

function load_sys_status()
    local db = dbmng:getOne()
    local info = db.status:findOne({_id=gMapID})
    dumpTab(info, "SysStatus")
    if not info then
        info = {_id=gMapID, start=gTime, ids={}}
        db.status:insert(info)
    end
    _G.gSysStatus = info
end

function load_white_list_status()
    local db = dbmng:getOne()
    local info = db.status:findOne({_id= "white_list"})
    dumpTab(info, "white_list")
    if not info then
        info = {_id="white_list"}
        db.status:insert(info)
    end
    _G.white_list = info
end

function init_effect()
    local count = 0
    for pid, v in pairs(gPlys) do
        local propid = v.culture * 1000 + v:get_castle_lv()
        if v.propid ~= propid then v.propid = propid end
        v.nprison = v:get_prison_count()
        v:initEffect(true)

        if v.uid > 0 then
            local u = unionmng.get_union( v.uid )
            if u then 
                v.uname = u.alias
                v.uflag = u.flag
            end
        end
        etypipe.add(v)
        count = count + 1
        if count % 100 == 0 then print( "init_effect, count =", count ) end
    end
    print( "init_effect_done" )

    local us = unionmng.get_all()
    for _, v in pairs( us ) do v:union_pow() end

    print( "init_effect_union_done" )
    return count
end

function load_sys_mail()
    local db = dbmng:getOne()
    local info = db.mail:find({to=0})
    local mails = {}
    local sn = 0
    while info:hasNext() do
        local v = info:next()
        table.insert(mails, v)
        if v.idx > sn then sn = v.idx end
    end
    table.sort(mails,function(l, r) return l.idx < r.idx end)
    _G.gSysMailSn = sn
    _G.gSysMail = mails
end

function load_count()
    for _, v in pairs( gPlys ) do v._count = {} end
    local db = dbmng:getOne()
    local info = db.count:find({})
    while info:hasNext() do
        local line = info:next()
        local player = getPlayer(line._id)
        if player ~= nil then
            line._id = nil
            player._count = line
        end
    end
end

function restore_timer()
    local db = dbmng:getOne()
    db.timer:delete({delete=true})

    local info = db.timer:find({})
    local maxSn = 0
    local isCron = false

    local tm_shutdown = (gSysStatus.tick or gTime) - 1
    print( "tm_shutdown", tm_shutdown, gTime - tm_shutdown )

    _G.gTime = tm_shutdown
    _G.gMsec = 0
    _G.gCompensation = tm_shutdown
    c_time_set_start(tm_shutdown)

    while info:hasNext() do
        local t = info:next()
        if t.over < tm_shutdown then
            WARN( "timer error, id = %d", t._id )
        else
            local sn = t._id
            timer._sns[ sn ] = t
            addTimer(t._id, (t.over-tm_shutdown)*1000, t.tag or 0)
            if sn > maxSn then maxSn = sn end
        end
    end
    _G.gSns[ "timer" ] = maxSn + 1

    for eid, ety in pairs( gEtys or {} ) do
        if not is_troop( ety ) then
            ety.troop_comings = nil
        end
    end
    troop_mng.check_troop( tm_shutdown )

    for _, h in pairs( heromng._heros or {} ) do
        if h.status == HERO_STATUS_TYPE.MOVING then
            if h.troop and troop_mng.get_troop( h.troop ) then

            else
                h.status = HERO_STATUS_TYPE.FREE
            end
        end
    end

   return "Compensation"
end



function post_init()
    c_roi_view_start()

    INFO("-- init_rank ---------")
    rank_mng.init()
    INFO("-- init_rank done  ---")

    INFO("-- accpet world events ---------")
    world_event.accept_world_event()
    INFO("-- accpet world events done  ---")
end

function action()
    monitoring(MONITOR_TYPE.LOADDATA, "before load data")
    INFO("-- load_sys_status ---------")
    load_sys_status()
    INFO("-- load_sys_status done-----")
    monitoring(MONITOR_TYPE.LOADDATA, "load_sys_status")

    INFO("-- load_wander -------------")
    wander.load()
    INFO("-- load_wander done --------")

    INFO("-- load_player -------------")
    load_player()
    INFO("-- load_player done --------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_player")

    INFO("-- load_world_event -------------")
    world_event.load_world_event()
    INFO("-- load_world_event done --------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_world_event")

    INFO("-- load_union --------------")
    union_t.load()
    union2_t.load()
    INFO("-- load_union done ---------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_union")

    INFO("-- load_union_member -------")
    union_member_t.load()
    INFO("-- load_union_member done --")
    monitoring(MONITOR_TYPE.LOADDATA, "load_union_member")

    INFO("-- unoin_buildlv -----") -- union_t后 在load_troop 前
    union_buildlv.load()--
    INFO("-- unoin_buildlv done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_buildlv")

    INFO("-- load_union_build --------")
    union_build_t.load()
    INFO("-- load_union_build done ---")
    monitoring(MONITOR_TYPE.LOADDATA, "load_union_build")

    INFO("-- load_union_tech ---------")
    union_tech_t.load()
    INFO("-- load_union_tech done ----")
    monitoring(MONITOR_TYPE.LOADDATA, "load_union_tech")


    INFO("-- load_count -------------")
    --load_count()
    INFO("-- load_count done --------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_player")

    INFO("-- load_build --------------")
    load_build()
    INFO("-- load_build done ---------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_build")


    INFO("-- load_npc_city -----------")
    npc_city.load_npc_city()
    INFO("-- load_npc_city -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_npc_city")

    INFO("-- load_cross_act -----------")
    cross_act.load_data()
    INFO("-- load_cross_act -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_cross_act")

    INFO("-- load_refugee -----------")
    refugee.load_from_db()
    INFO("-- load_refugee -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_refugee")

    INFO("-- load_cross_refugee -----------")
    cross_refugee_c.load_data()
    INFO("-- load_cross_refugee -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_refugee")


    INFO("-- load_clown -----------")
    load_clown()
    INFO("-- load_clown -----------")


    INFO("-- load_monster_city -----------")
    monster_city.load_monster_city()
    INFO("-- load_monster_city -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_monster_city")


    INFO("-- load_king_city -----------")
    king_city.load_king_city()
    INFO("-- load_king_city -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_king_city")

    INFO("-- load_kw_mall -----------")
    kw_mall.load_from_db()
    INFO("-- load_kw_mall -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_kw_mall")

    load_troop() 

    INFO("-- load_hero ---------------")
    load_hero()
    INFO("-- load_hero done ----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_hero")

    INFO("-- load_monster ------------")
    monster.load_from_db()
    INFO("-- load_monster done--------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_monster")

    INFO("-- restore_load_farm -------")
    farm.load_from_db()
    INFO("-- restore_load_farm done --")
    monitoring(MONITOR_TYPE.LOADDATA, "restore_load_farm")

    INFO("-- restore_load_unit -------")
    load_unit()
    INFO("-- restore_load_unit done --")
    monitoring(MONITOR_TYPE.LOADDATA, "restore_load_unit")

    INFO("-- restore_system_mail -----")
    load_sys_mail()
    INFO("-- restore_system_mail done-")
    monitoring(MONITOR_TYPE.LOADDATA, "restore_system_mail")
    
    INFO("-- load_lost_temple -----------")
    lost_temple.load_lost_temple()
    INFO("-- load_lost_temple -----------")
    monitoring(MONITOR_TYPE.LOADDATA, "load_lost_temple")


    INFO("-- restore_equip -----")
    load_equip()
    INFO("-- restore_equip done-")
    monitoring(MONITOR_TYPE.LOADDATA, "restore_equip")

    --INFO("-- init_effect -------------")
    --local count = init_effect()
    --INFO("-- init_effect done -------- %d", count)
    --monitoring(MONITOR_TYPE.LOADDATA, "init_effect")
    
    INFO("-- restore_room -----")
    load_room() 
    INFO("-- restore_room done-")
    monitoring(MONITOR_TYPE.LOADDATA, "restore_room")
    
    INFO("-- unoin_mall -----")
    union_mall.load()
    INFO("-- unoin_mall done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_mall")

    INFO("-- unoin_task -----")
    union_task.load()--在ety和union 后加载
    INFO("-- unoin_task done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_task")

    INFO("-- unoin_mission -----")
    union_mission.load()--
    INFO("-- unoin_mission done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_mission")

    INFO("-- unoin_word -----")
    union_word.load()--
    INFO("-- unoin_word done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_word")


    INFO("-- unoin_relation -----")
    union_relation.load()--
    INFO("-- unoin_relation done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_relation")

    INFO("-- unoin_help -----")
    union_help.load()--
    INFO("-- unoin_help done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_help")

    INFO("-- unoin_god -----")
    union_god.load()--
    INFO("-- unoin_god done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "unoin_god")

    INFO("-- unoin_item -----")
    union_item.load()--
    INFO("-- unoin_item done -----")

    monitoring(MONITOR_TYPE.LOADDATA, "unoin_god")
    INFO("-- gacha_world_limit -----")
    gacha_limit_t.load_gacha_world_limit()
    INFO("-- gacha_world_limit done -----")
    monitoring(MONITOR_TYPE.LOADDATA, "gacha_world_limit")

    INFO("-- white list-----")
    load_white_list_status()
    INFO("-- white list done-----")
    monitoring(MONITOR_TYPE.LOADDATA, "white_list")

    INFO("-- restore_timer -----------")
    local compensate =  restore_timer()
    INFO("-- restore_timer done ------, %s", compensate or "none")
    monitoring(MONITOR_TYPE.LOADDATA, "restore_timer")

    c_tick(0)
    init_effect()
    local use = c_tick(1)
    WARN( "init_effect, use %d ms", use )

    post_init()

    INFO("-- done done done ----------")

    return compensate
end


function load_unit()
    local db = dbmng:getOne()
    db.unit:delete({delete=true})
    local info = db.unit:find({})
    while info:hasNext() do
        local m = info:next()
        if is_camp( m ) then
            local troop = troop_mng.get_troop( m.my_troop_id )
            if troop and troop.target_eid == m.eid then
                gEtys[ m.eid ] = m
                etypipe.add(m)
            else
                gPendingDelete.unit[ m.eid ] = 1
            end
        else
            gEtys[ m.eid ] = m
            etypipe.add(m)
        end
    end
end

