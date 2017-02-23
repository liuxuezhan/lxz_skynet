module( "agent_t", package.seeall )

function agent_test( self, info, info1)
    pause()
end

function agent_test_struct( self, id, mems, name )
    pause()
    print("ok")
end

function agent_move_eye( self, pid, x, y )
    c_mov_eye(pid, x, y)
end


function agent_remove_eye( self, pid )
    c_rem_eye( pid )
end

function agent_syn_call(self, id, func, arg)
    --print("sync all ", id, func, arg)
    local map_id = self.pid
    if arg[1] == "union" then
        local uid = arg[2]
        local union = unionmng.get_union(uid)
        if union then
            table.remove(arg, 1)
            table.remove(arg, 1)
            local val  = union_t[func](union, self.pid, id, unpack(arg))
            if id ~= 0 then
                Rpc:callAgent(map_id, "agent_syn_call_ack", id, val or {})
                return
            end
        end
    elseif arg[1] == "union_relation" then
        local uid = arg[2]
        local union = unionmng.get_union(uid)
        if union then
            table.remove(arg, 1)
            table.remove(arg, 1)
            local val = union_relation.list(union)
            if id ~= 0 then
                Rpc:callAgent(map_id, "agent_syn_call_ack", id, val or {})
                return
            end
        end
    elseif arg[1] == "player" then
        local pid = arg[2]
        local ply = getPlayer(pid)
        if ply then
            table.remove(arg, 1)
            table.remove(arg, 1)
            local val = player_t[func](ply, unpack(arg))
            if id ~= 0 then
                Rpc:callAgent(map_id, "agent_syn_call_ack", id, val or {})
                return
            end
        end
    end

    if id~= 0 then
        Rpc:callAgent(map_id, "agent_syn_call_ack", id, {})
    end

end

function agent_syn_call_ack(self, id, ret)
    --print("sync all back ", id, ret)
    local co = getCoroPend("syncall", id) 
    coroutine.resume(co, ret)
end

function agent_login(self, pid)
    ply = getPlayer(pid)
    if ply then
        ply:login(pid)
    end
end

function clear_ply_info(pid)
    local ply = getPlayer(pid)
    if ply then
        local build = ply._build or {}
        for k, v in pairs(build) do
            build_t.clr(v)
        end
        ply._build = nil
    end

    local hero = ply._hero or {}
    for k, v in pairs(hero) do
        hero_t.clr(v)
    end
    ply._hero = nil

    local equip = ply._equip or {}
    for k, v in pairs(equip) do
        v:clr()
        gPendingSave.equip[ k ] = v
    end
    ply._equip = nil

    local item = ply.item or {}
    gPendingSave.item[ pid ] = nil
    ply.item = nil

    local count = ply._count or {}
    for k, v in pairs(count) do
        gPendingSave.count[ ply.pid ][k] = nil
    end
    ply._count = nil

    local ache = ply._ache or {}
    for k, v in pairs(ache) do
        gPendingSave.ache[ ply.pid ][k] = nil
    end
    ply._ache = nil

    troop_mng.delete_troop(ply.my_troop_id)

    local db = ply:getDb()
    db.task:delete({_id=ply.pid}) 
    rem_ety(ply.eid)
end

function agent_migrate_ack(self, pid, map, ret)
    if ret ~= -1 then
        local ply = getPlayer(pid)
        if ply then
            pushHead(_G.GateSid, 0, 9)  -- set server id
            pushInt(ply.sockid)
            pushInt(self.pid)
            pushInt(ply.pid)
            pushOver()
            ply.cross_gs = self.pid
            Rpc:callAgent(self.pid, "agent_login", pid)
            return
        end
        --local ply = getPlayer(pid)
        --if ply then
        --    local build = ply._build or {}
        --    for k, v in pairs(build) do
        --        build_t.clr(v)
        --    end
        --    ply._build = nil
        --end

        --local hero = ply._hero or {}
        --for k, v in pairs(hero) do
        --    hero_t.clr(v)
        --end
        --ply._hero = nil

        --local equip = ply._equip or {}
        --for k, v in pairs(equip) do
        --    v:clr()
        --    gPendingSave.equip[ k ] = v
        --end
        --ply._equip = nil

        --local item = ply.item or {}
        --gPendingSave.item[ pid ] = nil
        --ply.item = nil

        --local count = ply._count or {}
        --for k, v in pairs(count) do
        --    gPendingSave.count[ ply.pid ][k] = nil
        --end
        --ply._count = nil

        --local ache = ply._ache or {}
        --for k, v in pairs(ache) do
        --    gPendingSave.ache[ ply.pid ][k] = nil
        --end
        --ply._ache = nil

        --local arm = data.arm
        --local troop = troop_mng.create_troop(TroopAction.DefultFollow, ply, ply)
        --ply.my_troop_id = troop._id
        --for id, num in pairs( arm ) do
        --    troop:add_soldier( id, num )
        --end

        --local db = ply:getDb()
        --db.task:delete({_id=ply.pid}) 
    else
        self:add_debug( "can not move" )
    end
end


    function agent_migrate( self, pid, x, y, data , task, timers, union_pro, troop)
    --print("jump to server ", pid)
        -- 是否有空位    
        local from = self.pid
        --if c_map_test_pos( x, y, 4 ) ~= 0 then
        --    Rpc:callAgent( from, "agent_migrate_ack", pid, gMapID, -1 ) 
        --    return
        --end

        local eid = get_eid_ply()

    local pro = data._pro
    local tm_login = pro.tm_login
    pro.eid = eid
    pro.map = gMapID
    local ply = player_t.new( pro )
    --ply.x = x
    --ply.y = y
    ply.sockid = data.sockid 
    ply.tm_login = tm_login or gTime
    rawset( ply, "eid", eid )

    ply._union = data._union
    gPendingSave.union_member[ply.pid] = ply._union

    local build = data._build or {}
    local bs = {}
    for k, v in pairs( build or {}) do
        b = v._pro
        bs[ b.idx ] = build_t.new( b )
    end
    ply._build = bs


    local hs = {}
    for k, v in pairs(data._hero or {}) do
        h = v._pro
        local hero = hero_t.new(h)
        hs[h.idx] = hero
        heromng.add_hero(hero)
    end
    ply._hero = hs

    local equip = data._equip or {}
    local es = {}
    for k, v in pairs(equip or {}) do
        local id = getId("equip")
        v._id = id
        gPendingSave.equip[ id ] = v
        es[id] = v
    end
    ply._equip = es


    local item = data._item or {}
    ply._item = item
    for k, _ in pairs(item) do
        ply:add_item_pend(k)
    end

    local count = data._count or {}
    for k, v in pairs(count or {}) do
        gPendingSave.count[ ply.pid ][k] = v
    end
    ply._count = count

    local ache = data._ache or {}
    for k, v in pairs(ache or {}) do
        gPendingSave.ache[ ply.pid ][k] = v
    end
    ply._ache = ache

    --local arm = data.arm
    --local troop = troop_mng.create_troop(TroopAction.DefultFollow, ply, ply)
    --ply.my_troop_id = troop._id
    --for id, num in pairs( arm ) do
    --    troop:add_soldier( id, num )
    --end
    ply:initEffect()

    ply:clear_task()
    for k, v in pairs(task) do
        gPendingSave.task[v._id] = v
    end


    player_t._cache[pid] = pro
    gEtys[ eid ] = ply
    ply.size = 4
    etypipe.add(ply)

    local tr = ply:init_my_troop()
    if tr then
        for k, v in pairs(troop.arms or {}) do
            tr:add_arm(k, v)
        end
    end

    ply.my_troop_id = tr._id

    for k, v in pairs(timers) do
        timer._sns[v._id] = v
        timer.newTimer(v)
        timer.mark(v)
    end

    local union = unionmng.get_union(ply.uid)
    if not union then
        local u = union2_t.new(union_pro)
        union = u
        u.map_id = self.pid
        unionmng.add_union2(u)
    end
    local members = union._members or {}
    members[ply.pid] = ply
    union._members = members

    Rpc:callAgent( self.pid, "agent_migrate_ack", pid, self.pid, pid ) 

    --if ply then
    --    pushHead(_G.GateSid, 0, 9)  -- set server id
    --    pushInt(ply.sockid)
    --    pushInt(self.pid)
    --    pushInt(ply.pid)
    --    pushOver()
    --    player_t.login( ply, ply.pid )
    --end

end
function agent_migrate_back_ack(self, pid, map, ret)
    if ret ~= -1 then
        local ply = getPlayer(pid)
        if ply then
            pushHead(_G.GateSid, 0, 9)  -- set server id
            pushInt(ply.sockid)
            pushInt(self.pid)
            pushInt(ply.pid)
            pushOver()
            ply.cross_gs = self.pid
            Rpc:callAgent(self.pid, "agent_login", pid)
            clear_ply_info(pid)
            return
        end
    else
        self:add_debug( "can not move" )
    end
end

function agent_migrate_back( self, pid, x, y, data , task, timers, union_pro, troop)
    --print("jump to server ", pid)
    -- 是否有空位    
    local from = self.pid
    --if c_map_test_pos( x, y, 4 ) ~= 0 then
    --    Rpc:callAgent( from, "agent_migrate_ack", pid, gMapID, -1 ) 
    --    return
    --end
    clear_ply_info(pid)

    local eid = get_eid_ply()

    local pro = data._pro
    local tm_login = pro.tm_login
    pro.eid = eid
    pro.map = gMapID
    local ply = player_t.new( pro )
    --ply.x = x
    --ply.y = y
    ply.sockid = data.sockid 
    ply.tm_login = tm_login or gTime
    rawset( ply, "eid", eid )

    ply._union = data._union
    gPendingSave.union_member[ply.pid] = ply._union

    local build = data._build or {}
    local bs = {}
    for k, v in pairs( build or {}) do
        b = v._pro
        bs[ b.idx ] = build_t.new( b )
    end
    ply._build = bs


    local hs = {}
    for k, v in pairs(data._hero or {}) do
        h = v._pro
        local hero = hero_t.new(h)
        hs[h.idx] = hero
        heromng.add_hero(hero)
    end
    ply._hero = hs

    local equip = data._equip or {}
    local es = {}
    for k, v in pairs(equip or {}) do
        local id = getId("equip")
        v._id = id
        gPendingSave.equip[ id ] = v
        es[id] = v
    end
    ply._equip = es


    local item = data._item or {}
    ply._item = item
    for k, _ in pairs(item) do
        ply:add_item_pend(k)
    end

    local count = data._count or {}
    for k, v in pairs(count or {}) do
        gPendingSave.count[ ply.pid ][k] = v
    end
    ply._count = count

    local ache = data._ache or {}
    for k, v in pairs(ache or {}) do
        gPendingSave.ache[ ply.pid ][k] = v
    end
    ply._ache = ache

    --local arm = data.arm
    --local troop = troop_mng.create_troop(TroopAction.DefultFollow, ply, ply)
    --ply.my_troop_id = troop._id
    --for id, num in pairs( arm ) do
    --    troop:add_soldier( id, num )
    --end
    ply:initEffect()

    ply:clear_task()
    for k, v in pairs(task) do
        gPendingSave.task[v._id] = v
    end

    player_t._cache[pid] = pro
    gEtys[ eid ] = ply
    ply.size = 4
    etypipe.add(ply)

    local tr = ply:init_my_troop()
    if tr then
        for k, v in pairs(troop.arms or {}) do
            tr:add_arm(k, v)
        end
    end

    ply.my_troop_id = tr._id

    for k, v in pairs(timers) do
        timer._sns[v._id] = v
        timer.newTimer(v)
        timer.mark(v)
    end

    --local union = unionmng.get_union(ply.uid)
    --if not union then
    --    local u = union2_t.new(union_pro)
    --    union = u
    --    u.map_id = self.pid
    --    unionmng.add_union2(u)
    --end
    --local members = union._members or {}
    --members[ply.pid] = ply
    --union._members = members

    Rpc:callAgent( self.pid, "agent_migrate_back_ack", pid, self.pid, pid ) 
end


function ack_tool(pid, sn, data)
    if sn then
        --print("receive tool ack ", sn)
        gPendingToolAck[sn] = nil
    end

    if data.api then
        player_t[data.api](data)
    end
end

---cross act

function cross_act_ntf(self, ntf_id, ...)
    arg = { ... } or {}
    local prop = resmng.get_conf("prop_cross_act_notify", ntf_id)
    if prop then
        if prop.Notify then
            Rpc:tips({pid=-1,gid=_G.GateSid}, 2, prop.Notify, arg[1] or {})
        end
        if prop.Chat1 then
            player_t.add_chat({pid=-1,gid=_G.GateSid}, 0, 0, {pid=0}, "", prop.Chat1, arg[1])
        end
        if prop.SendMail then
            player_t.send_system_to_all(prop.SendMail, arg[3] or {}, arg[1] or {}, arg[2])
        end
    end
end

function post_npc_change(self, propid, map_id, tag)
    cross_mng_c.npc_change(self.pid, propid, map_id, tag)
end

function cross_act_st_cast(self, pack)
    cross_act.rec_cross_act_st(pack)
end

function cross_act_st_req(self, param)
    cross_mng_c.cross_act_st_req(self.pid)
end

function upload_gs_info(self, gs_info)
    cross_mng_c.upload_gs_info(gs_info)
end

function cross_gm(self, pack)
    if pack[2] == "1" then
        cross_mng_c.cross_act_prepare()
    end
    if pack[2] == "2" then
        cross_mng_c.cross_act_fight()
    end
    if pack[2] == "3" then
        cross_mng_c.cross_act_end()
    end
    if pack[2] == "4" then
        cross_refugee_c.cross_refugee_start()
    end
    if pack[2] == "5" then
        cross_refugee_c.cross_refugee_end()
    end
    if pack[2] == "debug" then
        cross_mng_c.debug_tag = cross_mng.debug_tag * -1
    end
end

function refugee_end(self, pack)
    refugee.clear_all_refugee()
end

function refugee_change(self, pid, mode, info)
    local ply = getPlayer(pid)
    if ply then
        local refugee_info = ply.refugee_info or {}
        if mode == 0 then
            refugee_info[info.eid] = nil
        else
            refugee_info[info.eid] = info
        end
    end
    ply.refugee_info = refugee_info
end

function cross_npc_info_req(self, pid)
    local gs_id = self.pid
    local gs = gs_pool[gs_id]
    local pack = {}
    if gs then
        local info = {}
        info.left_npc = gs.left_npc
        info.occu_npc = gs.occu_npc
        pack.pid = pid
        pack.info = info

        Rpc:callAgent(gs_id, "cross_npc_info_ack", pack)
    end
end

function cross_npc_info_ack(self, pack)
    local ply = getPlayer(pack.pid)
    if ply then
        ply:cross_npc_info_ack(pack.info)
    end
end

function upload_act_score(self, action, val, pack)
    cross_rank_c.update_score(action, val, unpack(pack))
end

function send_cross_award(self, rank_mode, reward_mode, id, award, param)
    do_send_award[rank_mode](reward_mode, id, award, param)
end

do_send_award = {}

do_send_award[RANK_MODE.PLY] = function(mail_num, id, award, param)
    local ply = getPlayer(id)
    if ply then
        ply:send_system_notice(mail_num, param, v.Award)
    end
end

do_send_award[RANK_MODE.UNION] = function(mail_num, id, award, param)
    local union = unionmng.get_union(id)
    if union then
        for _, ply in pairs(union._members or {}) do
            ply:send_system_notice(mail_num, param, v.Award)
        end
    end
end

function gm_cmd(self, proc_id, gm_type, param)
    local ret = {code = 0, msg = "param error"}
    if do_gm_cmd[gm_type] then
        ret = do_gm_cmd[gm_type](param)
    end
    to_tool(0, {type = "gm_ack", gm_type = gm_type, proc_id = proc_id, result = ret})
end

do_gm_cmd = {}

do_gm_cmd["pay"] = function(param)
    local ply_id = tonumber(param.player_id)
    local order_id = param.order_id
    local product_id = tonumber(param.product_id)
    local pay_amount = tonumber(param.pay_amount)

    INFO( "[pay], pid=%s, order_id=%s, product_id=%s, pay_amount=%s", ply_id or "unknown", order_id or "unknown", product_id or "unknown", pay_amount or "unknown" )

    if not ply_id or not order_id or not product_id or not pay_amount then
        LOG("GM CMD pay param error ~p", param)
        return {code = 0, msg = "param error"}
    end

    local ply = getPlayer(ply_id)
    if not ply then
        LOG("GM CMD PAY did not find ply")
        INFO( "[pay], error, pid=%d, order_id=%s, product_id=%s, pay_amount=%s, no player", ply_id, order_id, product_id, pay_amount )
        return {code = 0, msg = "no this ply"}
    end

    if param.order_id then
        local db = dbmng:getOne()
        local info =db.order:findOne({_id = param.order_id})
        if not info then

            info = {_id = param.order_id,}
            gPendingInsert.order[ info._id ] = info 

            local result = ply:on_pay( product_id, true )

            if result.code == 1 then 
                ply:pre_tlog("PayFlow",prop.NewPrice,(prop.Gold + (prop.ExtraGold or 0)),param.order_id ,"null")
            end

            return result

        else
            INFO( "[pay], error, pid=%d, order_id=%s, product_id=%s, pay_amount=%s, duplicate", ply_id, order_id, product_id, pay_amount )
            return {code = 0, msg = "already pay"}
        end
    end

    return {code = 0, msg = "no order info in req"}
end

function gm_add_ply_item(ply, awards, reason)
    ply:add_bonus( "mutex_award", awards, reason)
end

function gm_add_union_item(ply, awards)
    local union = unionmng.get_union(ply.uid)
    if union then
        for _, mem in pairs(union._members or {}) do
             union_item.add(mem, awards, UNION_ITEM.CITY, 0)
        end
    end
end

do_gm_cmd["senditem"] = function(param)
    local ply_id = ""
    if param.player_id ~= "all" then
        ply_id = tonumber(param.player_id)
    else
        ply_id = "all"
    end
    local title = param.title
    local content = param.content
    local mail_id = 10031

    if not ply_id or not title or not content then
        LOG("GM CMD senditem param error ~p", param)
        return {code = 0, msg = "param error"}
    end
    
    local item = {}

    for k, v in pairs(param.item or {}) do
        local award = {v.type, tonumber(v.id), tonumber(v.num), 10000}
        table.insert(item, award)
    end

    if param.player_id == "all" then
        player_t.send_system_to_all(mail_id, {title}, {content}, item)
        return {code = 1, msg = "success"}
    else
        if ply_id < 10000 then
            LOG("GM CMD PAY did not find ply")
            return {code = 0, msg = "no this ply"}
        end
        local ply = getPlayer(ply_id)
        if not ply then
            LOG("GM CMD PAY did not find ply")
            return {code = 0, msg = "no this ply"}
        else
            ply:send_system_notice(mail_id, {title}, {content}, item)
            return {code = 1, msg = "success"}
        end
    end

    --if param.order_id then
    --    local db = dbmng:getOne()
    --    local info =db.order:findOne({_id = param.order_id})
    --    if not info then
    --        info = {_id = param.order_id,}
    --        db.order:insert(info, {["$set"] = param}, true)
    --        LOG("GM CMD PAY pid = %s order_id %d", param.order_id, ply_id)
    --        ply:gm_add_gold(10000)
    --        return {code = 1, msg = "success"}
    --    else
    --        return {code = 0, msg = "already pay"}
    --    end
    --end
    --return {code = 0, msg = "no order info in req"}
end

do_gm_cmd["sendgm"] = function(content)
    return gmcmd.do_cmd(content)
    --return {code = 1, msg = "success"}
end

do_gm_cmd["sendjoinrun"] = function(param)
    gPendingSave.status["joinrun"].cmd = param
    return {code = 1, msg = "success"}
end



