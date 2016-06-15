module("player_t")

-- make troop from home
-- siege
-- union_mass_create
-- gather
-- hold_defense
-- spy
-- union_save_res
-- union_get_res
-- union_build
-- union_fix_build
-- union_upgrade_build


function get_my_arm(self)
    local troop = troop_mng.get_troop(self.my_troop_id)
    if not troop then troop = self:get_my_troop() end
    return troop:get_arm_by_pid(self.pid)
end

function get_my_troop(self)
    local tr = troop_mng.get_troop(self.my_troop_id)
    if tr then return tr end
    WARN("get_my_troop, not found my_troop, pid=%d", self.pid)
    return self:init_my_troop()
end

function init_my_troop(self)
    local my_troop = troop_mng.get_troop(self.my_troop_id)
    if my_troop ~= nil then return my_troop end

    local troop = troop_mng.create_troop(TroopAction.DefultFollow, self, self)
    troop.arms = {}
    self.my_troop_id = troop._id
    return troop
end

function add_busy_troop(self, troop_id)
    local limit_num = 5 --sanshimark 可派出的部队上限
    if #self.busy_troop_ids > limit_num then
        return false
    end
    for k, v in ipairs(self.busy_troop_ids) do
        if v == troop_id then
            return false
        end
    end
    table.insert(self.busy_troop_ids, troop_id)
    return true
end

function rem_busy_troop(self, troop_id)
    for k, v in ipairs(self.busy_troop_ids) do
        if v == troop_id then
            Rpc:stateTroop(self, {_id=troop_id, delete=true})
            table.remove(self.busy_troop_ids, k)
            return true
        end
    end
end


function rm_busy_troop(self, troop_id)
    local idx = 0
    for k, v in ipairs(self.busy_troop_ids) do
        if v == troop_id then
            idx = k
            break
        end
    end
    if idx > 0 then
        table.remove(self.busy_troop_ids, idx)
        return true
    else
        return nil
    end
end


function inc_arm(self, soldier_id, num)
    local troop = self:get_my_troop()
    if troop == nil then return end
    troop:add_soldier(soldier_id, num)
    troop:save()
end


function is_eid_valid(self, dest_eid)
    --错误的eid
    local dest_obj = get_ety(dest_eid)
    if dest_obj == nil then return false end

     --不能是自己
    if dest_eid == self.eid then return false end

    return true
end

function can_be_mass_attack(self, dest_eid)

    return true
end


-- this function should be call just before create_troop, because here will deduct arm
function check_arm(self, arm)
    if self:is_troop_full() then self:add_debug("CountTroop") return end

    local my_troop = troop_mng.get_troop(self.my_troop_id)
    if my_troop == nil then return false end
    local live = my_troop:get_live()

    local total_num = 0
    local valid_pos = {false, false, false, false} --步骑弓车，对应英雄的位置判断能不能有英雄
    for k, v in pairs(arm.live_soldier or {}) do
        if v <= 0 then return end
        if live[k] == nil or live[k] < v then return false end
        total_num = total_num + v
        local pos = math.floor(k/1000)
        valid_pos[pos] = true
    end

    local count_soldier = self:get_val("CountSoldier")
    if total_num < 1 or total_num > count_soldier then return false end

    local _, mul, add = self:get_nums("CountSoldier")
    count_soldier = count_soldier * ( 1 + mul * 0.0001) + add
    if total_num < 1 or total_num > count_soldier then return false end

    local hsgo = {0,0,0,0}
    local hs = arm.heros or {}
    for i = 1, 4, 1 do
        local idx = hs[ i ]
        if idx ~= 0 and valid_pos[i] then
            local h = self:get_hero(idx)
            if h then
                if h.status == HERO_STATUS_TYPE.FREE then
                    hsgo[ i ] = h._id
                elseif h.status == HERO_STATUS_TYPE.BUILDING then
                    self:hero_offduty(h)
                    hsgo[ i ] = h._id
                end
            end
        end
    end
    arm.heros = hsgo

    for id, num in pairs(arm.live_soldier or {}) do
        live[ id ] = live[ id ] - num
    end

    local tlive = {}
    for k, v in pairs( live ) do
        if v >= 1 then
            tlive[ k ] = math.floor( v )
        end
    end
    my_troop.arms[ self.pid ].live_soldier = tlive

    for k, v in ipairs(hsgo) do
        if v ~= 0 then
            heromng.go_to_battle(v)
        end
    end
    Rpc:upd_arm(self, tlive)
    my_troop:save()

    arm.pid = self.pid

    return true
end

-- troop start from home
-- troop start from home
-- troop start from home
--
function siege(self, dest_eid, arm)
    local dest = get_ety(dest_eid)
    if not dest then return end
    if not self:can_move_to(dest.x, dest.y)  then return self:add_debug("can not move by castle lv") end

    local action = 0
    if is_monster(dest) then
        action = TroopAction.SiegeMonster
        if self:get_sinew() < 10 then
            self:add_debug( "not enough sinew" )
            return
        end

    elseif is_ply(dest) then
        if dest.uid == self.uid and self.uid ~= 0 then return end
        action = TroopAction.SiegePlayer
    elseif is_npc_city(dest) and can_atk_npc(self, dest_eid) then
        action = TroopAction.SiegeNpc

    elseif is_king_city(dest) then
        action = TroopAction.King
    elseif is_monster_city(dest) then
        action = TroopAction.AtkMC
    elseif is_res(dest) then
        action = TroopAction.Gather
    end

    if action == 0 then return end

    if not self:check_arm(arm) then return end
    local troop = troop_mng.create_troop(action, self, dest, arm)

    troop:go()

    if is_monster(dest) then
        dest.aimid = self.eid
        dest:mark()
        self:dec_sinew( 10 )

    elseif is_ply(dest) then
        union_hall_t.battle_room_create(troop)
        player_t.get_watchtower_info(troop)
    elseif is_res(dest) then
        player_t.get_watchtower_info(troop)
    end
end

--攻击任务npc怪物
function siege_task_npc(self, task_id, dest_eid, x, y, arm)
    local task_data = self:get_task_by_id(task_id)
    if task_data == nil or task_data.task_status ~= TASK_STATUS.TASK_STATUS_ACCEPTED then
        return
    end
    if not self:check_arm(arm) then return end
    local troop = troop_mng.create_troop(TroopAction.SiegeTaskNpc, self, self, arm)
    troop.target_eid = dest_eid
    troop.dx = x
    troop.dy = y
    troop:set_extra("npc_task_id", task_id)
    troop:go()
end

function gather(self, dest_eid, arm)
    local dest = get_ety(dest_eid)
    if not dest then return end
    if not self:can_move_to(dest.x, dest.y)  then return self:add_debug("can not move by castle lv") end

    local conf = resmng.get_conf("prop_world_unit", dest.propid)
    if not conf then return end
    if not conf.ResMode then return end

    if not self:check_arm(arm) then return end
    local troop = troop_mng.create_troop(TroopAction.Gather, self, dest, arm)
    troop:go()

    if is_res(dest) then farm.mark(dest) end

    --瞭望塔
    if dest.pid ~= nil and dest.pid > 0 then
        player_t.get_watchtower_info(troop)
    end
end


function spy(self, dest_eid)
    local dest = get_ety(dest_eid)
    if not dest then return end
    if not self:can_move_to(dest.x, dest.y)  then return self:add_debug("can not move by castle lv") end

    if is_ply(dest) then
        if dest.uid == self.uid and self.uid ~= 0 then return end

    elseif is_res(dest) then
        if dest.pid > 0 then
            if dest.uid == self.uid and self.uid ~= 0 then return end
        end
    end
    local troop = troop_mng.create_troop(TroopAction.Spy, self, dest)
    troop:go()
    --瞭望塔
    if dest.pid ~= nil and dest.pid > 0 then
        player_t.get_watchtower_info(troop)
    end
end


function camp(self, x, y, arm)
    if x < 0 or x >= 1280 then return end
    if y < 0 or y >= 1280 then return end
    if c_map_test_pos(x, y, 2) ~= 0 then return end

    if not self:check_arm(arm) then return end
    local troop = troop_mng.create_troop(TroopAction.Camp, self, self, arm)
    troop.target_eid = 0
    troop.dx = x
    troop.dy = y
    troop:go()

end

--集结
function union_mass_create(self, dest_eid, wait_time, arm)
    if self:check_mass_time(wait_time) == false then return end
    if self.uid == 0 then return end

    local D = get_ety(dest_eid)
    if not D then return end

    local action = 0
    if is_monster(D) then
        D.aimed = self.eid
        D:mark()
        action = TroopAction.SiegeMonster
    elseif is_ply(D) then
        if D.uid == self.uid then return end
        action = TroopAction.SiegePlayer
    elseif is_npc_city(D) then
        if can_atk_npc(self, dest_eid) then
            action = TroopAction.SiegeNpc
        end
    elseif is_king_city(D) then
        action = TroopAction.King
    elseif is_monster_city(D) then
        action = TroopAction.AtkMC
    else
        --todo
        return
    end

    if not self:check_arm(arm) then return end
    local troopA = troop_mng.create_troop(action, self, D, arm)
    troopA.is_mass = 1
    troopA.tmStart = gTime
    troopA.tmOver = gTime + wait_time
    troopA.tmSn = timer.new("troop_action", wait_time, troopA._id)
    troopA:notify_owner()

    union_hall_t.battle_room_create(troopA)
end


--参与集结
function union_mass_join(self, dest_eid, dest_troop_id, arm)
    local T = get_ety(dest_eid)
    if not T then return end
    if not is_ply(T) then return end
    if T.uid ~= self.uid then return end

    local troopT = troop_mng.get_troop(dest_troop_id)
    if not troopT then return end
    if troopT.owner_eid ~= T.eid then return end
    if not troopT:is_ready() then return end

    if not self:check_arm(arm)  then return end
    local troopA = troop_mng.create_troop(TroopAction.JoinMass, self, T, arm)
    troopA.dest_troop_id = dest_troop_id
    troopA:go()

    troopT:add_mark_id(troopA._id)

    local dest = get_ety(troopT.target_eid)
    if not dest then return end

    local troopD = dest:get_my_troop()
    if not troopD then return end

    union_hall_t.battle_room_update(OPERATOR.UPDATE, troopT, troopD)
end

function declare_tw_req(self, dest_eid)  
    local union = self.union(self) 
    if not union then 
        add_debug(self, "没有军团 宣战失败")
        return 
    end
    
    for k, v in pairs(self.busy_troop_ids) do
        local tr = troop_mng.get_troop(v)
        if tr then
            if tr.target_eid == dest_eid and tr.action == (TroopAction.Declare + 100) then
                add_debug(self, "宣战失败")
                return
            end
        end
    end

    if not union:can_declare_war(dest_eid) then
        add_debug(self, "宣战失败")
        return
    end
    local target = get_ety(dest_eid)
    if not target then return end

    local troop = troop_mng.create_troop(TroopAction.Declare, self, target)

    troop:go()
end



function decalre_atk_mc(self, dest_eid)
    local dest = get_ety(dest_eid)
    if not dest then return end

    local troop = troop_mng.create_troop(TroopAction.Declare, self, dest)
    troop:go()
end

function support_arm(self, dest_eid, arm)
    local dest = get_ety(dest_eid)
    if not dest then return end
    if not is_ply(dest) then return end
    if not self:can_move_to(dest.x, dest.y)  then return self:add_debug("can not move by castle lv") end

    if not self:check_arm(arm) then return end
    local troop = troop_mng.create_troop(TroopAction.SupportArm, self, dest, arm)
    troop:go()
    
    local troopT = dest:get_my_troop()
    troopT:add_mark_id(troop._id)
    troop.dest_troop_id = troopT._id

    union_hall_t.battle_room_update_ety(OPERATOR.UPDATE, dest)
    player_t.get_watchtower_info(troop)
end

function support_res(self, dest_eid, res)
    local dest = get_ety(dest_eid)
    if not dest then return end
    if not is_ply(dest) then return end
    if self.uid == 0 then return end
    if dest.uid ~= self.uid then return end

    local limit_load = 0
    local tax = 100
    local build_data = self:get_market()
    local build_id = resmng.BUILD_MARKET_1
    if build_data ~= nil then
        build_id = build_data.propid
    end
    local prop_build = resmng.prop_build[build_id]
    if prop_build ~= nil then
        tax = prop_build.Effect.CountTax
        limit_load = prop_build.Effect.CountResSupport_A
    end
    local ratio = (100 - tax) / 100
    --判断负重
    local cur_load = 0
    local dest_load = 0
    for mode, num in pairs( res ) do
        cur_load = cur_load + num * RES_RATE[mode]
    end
    if cur_load > limit_load then
        return
    end
     
    local num = 0
    local have = self.res
    for mode, num in pairs( res ) do
        if mode <= 0 and mode >= 4 then return end
        if self:get_res_num_normal( mode ) < num then return end
    end

    local goods = {}
    for mode, num in pairs( res ) do
        self:do_dec_res( mode, num, VALUE_CHANGE_REASON.SUPPORT_RES)
        table.insert( goods, { "res", mode, num } )
        dest_load = dest_load + math.floor(num * ratio * RES_RATE[mode])
    end

    local troop = troop_mng.create_troop(TroopAction.SupportRes, self, dest)
    troop:go()
    troop:add_goods( goods, VALUE_CHANGE_REASON.SUPPORT_RES)
    troop:set_extra("tax", tax)
    player_t.get_watchtower_info(troop, dest_load)
end



------------------------ new version ------------------
------------------------ new version ------------------
------------------------ new version ------------------
--联盟仓库存资源
function union_save_res(self, dest_eid, res)
    local dest = get_ety(dest_eid)
    if not dest then return end

    local troop = troop_mng.create_troop(TroopAction.SaveRes, self, dest)
    troop:go()
    troop:set_extra("union_save_res", res) 

    --把资源扣除
    self:do_dec_res(resmng.DEF_RES_FOOD, res[resmng.DEF_RES_FOOD], VALUE_CHANGE_REASON.REASON_UNION_SAVE_RESTORE)
    self:do_dec_res(resmng.DEF_RES_WOOD, res[resmng.DEF_RES_WOOD], VALUE_CHANGE_REASON.REASON_UNION_SAVE_RESTORE)
    self:do_dec_res(resmng.DEF_RES_IRON, res[resmng.DEF_RES_IRON], VALUE_CHANGE_REASON.REASON_UNION_SAVE_RESTORE)
    self:do_dec_res(resmng.DEF_RES_ENERGY, res[resmng.DEF_RES_ENERGY], VALUE_CHANGE_REASON.REASON_UNION_SAVE_RESTORE)
end

function can_atk_npc(self, destEid)
    local union = player_t.union(self)
    return union_t.can_atk_npc(union, destEid) and npc_city.can_atk_npc(self, destEid)
end

--联盟仓库取资
function union_get_res(self, dest_eid, res)
    local dest = get_ety(dest_eid)
    if not dest then return end

    if not union_build_t.can_troop( TroopAction.GetRes, self, dest_eid, res) then return end

    local troop = troop_mng.create_troop(TroopAction.GetRes, self, dest)
    troop:go()
    troop:set_extra("union_expect_res", res) 
end



-- troop start from home
-- troop start from home
-- troop start from home
--

--检查集结的时间
function check_mass_time(self, time)
    if time ~= MassTime.Level1 and time ~= MassTime.Level2 and time ~= MassTime.Level3 and time ~= MassTime.Level4 then
        return false
    end
    return true
end

--驻守
function hold_defense(self, dest_eid, arm)
    --todo
    --if is_union_building(dest_eid) and not union_build_t.can_troop( TroopAction.HoldDefense,self,dest_eid) then return end

    local dest = get_ety(dest_eid)
    if not dest then return end



    if not self:check_arm(arm) then return end
    local troop = troop_mng.create_troop(TroopAction.HoldDefense, self, dest, arm)
    troop:go()
    if not dest.hold_troop then  
        dest.hold_troop = {}  
    end
    dest.hold_troop[troop._id] = 1  
    player_t.get_watchtower_info(troop)
end



--侦查
--function spy(self, dest_eid)
--    if self:is_eid_valid(dest_eid) == false then return end
--    if self:is_troop_full() then return end
--    --todo
--
--    local dest_obj = get_ety(dest_eid)
--    local sx, sy = get_ety_pos(self)
--    local dx, dy = get_ety_pos(dest_obj)
--
--    local troop = troop_mng.create_troop(self.eid, dest_eid, TroopAction.Spy, sx, sy, dx, dy)
--    self:add_busy_troop(troop._id)
--    troop.owner_pid = self.pid
--    troop.union_id = self:get_uid()
--
--    if is_ply(dest_obj) then troop.dest_uid = dest_obj.uid else troop.dest_uid = 0 end 
--
--    troop.speed = (FixTroopSpeed.Spy / 60)
--    troop:start_march() 
--
--
--    --local dest = get_ety(dest_eid)
--    --if not dest then return end
--end



function union_build_leave(self, troopid)
    local tr = troop_mng.get_troop(troopid)
    if not tr then return end
    if tr.owner_pid ~= self.pid then return end
    if tr.action ~= TroopAction.UnionBuilding then return end

    local dest = get_ety(tr.attach_eid)
    if not dest then return end

    union_build_t.troop_update(dest, "build")

    if dest.my_troop_id then
        for k, v in pairs(dest.my_troop_id) do
            if v == tr._id then
                table.remove(dest.my_troop_id, k)
                break
            end
        end
    end

    if not next(dest.my_troop_id)then
        dest.my_troop_id=nil
    end
    tr.attach_eid = nil
    troop_mng.troop_back(tr)
end

function union_build(self, dest_eid, arm)
    local dest = get_ety(dest_eid)
    if not dest then return end

    if not union_build_t.can_troop( TroopAction.UnionBuild, self, dest_eid) then return end
    if not self:check_arm(arm)  then return end
    local troop = troop_mng.create_troop(TroopAction.UnionBuild, self, dest, arm)
    troop:go()
end


function union_fix_build(self, dest_eid, arm)
    local dest = get_ety(dest_eid)
    if not dest then return end

    if not union_build_t.can_troop( TroopAction.UnionFixBuild, self, dest_eid) then return end
    if not self:check_arm(arm)  then return end
    local troop = troop_mng.create_troop(TroopAction.UnionFixBuild, self, dest, arm)
    troop:go()
end


--升级建筑
function union_upgrade_build(self, dest_eid, arm)
    local dest = get_ety(dest_eid)
    if not dest then return end

    if not union_build_t.can_troop( TroopAction.UnionUpgradeBuild, self, dest_eid) then return end
    if not self:check_arm(arm)  then return end
    local troop = troop_mng.create_troop(TroopAction.UnionUpgradeBuild, self, dest, arm)
    troop:go()
end

--买特产
function buy_specialty(self, dest_eid, item)
    if self:is_eid_valid(dest_eid) == false then
        return
    end 

    local dest_obj = get_ety(dest_eid)
    
    --BuySpecialty    = 19,  --买特产
end

--上架特产
function confirm_specialty(self, dest_eid, item)  

    if self:is_eid_valid(dest_eid) == false then
        return
    end 

    local dest_obj = get_ety(dest_eid)
    --ConfirmSpecialty = 20, --上架特产
end

--下架特产
function cancle_specialty(self, dest_eid, item)

    if self:is_eid_valid(dest_eid) == false then
        return
    end 

    local dest_obj = get_ety(dest_eid)
    --CancleSpecialty = 21,  --下架特产
end

function troop_recall(self, dest_troop_id)
    local troop = troop_mng.get_troop(dest_troop_id)
    if troop then
        local action = troop:get_base_action()
        if troop:is_go() then
            if troop.is_mass == 1 then return end
            troop.curx , troop.cury = c_get_actor_pos(troop.eid)
            troop.tmCur = gTime
            troop:back()

            if action == TroopAction.JoinMass then
                local troopT = troop_mng.get_troop(troop.dest_troop_id)
                if troopT then
                    troopT:rem_mark_id(troop._id)
                    local D = get_ety(troopT.target_eid)
                    if D then
                        local troopD = D:get_my_troop()
                        if troopD then
                            union_hall_t.battle_room_update(OPERATOR.UPDATE, troopT, troopD)
                        end
                    end
                end
            elseif action == TroopAction.SupportArm then
                local dest = get_ety(troop.target_eid)
                union_hall_t.battle_room_update_ety(OPERATOR.UPDATE, dest)
            end
            player_t.rm_watchtower_info(troop)
        elseif troop:is_settle() then
            local dest = get_ety(troop.target_eid)
            if action == TroopAction.Gather then
                troop:back()
                if is_res(dest) then dest.my_troop_id = 0
                else remove_id(dest.my_troop_id, troop._id) end
                if dest then troop_mng.gather_stop(troop, dest) end

            elseif action == TroopAction.UnionBuild then
                troop:back()
                remove_id(dp.my_troop_id, troop._id)
                if dest then union_build_t.troop_update(dest, "build") end

            elseif action == TroopAction.Camp then
                troop:back()
                local camp = get_ety(troop.target_eid)
                if camp then
                    rem_ety(camp.eid)
                end
            elseif action == TroopAction.HoldDefense then
                local camp = get_ety(troop.target_eid)
                if camp  and camp.hold_troop then
                    camp.hold_troop[troop._id]= nil
                end
                union_hall_t.battle_room_update_ety(OPERATOR.UPDATE, dest)
                local one = troop:split_pid(self.pid)
                one:back()
                if one == troop then dest.my_troop_id = 0 end

            else
            -- todo
            --
            end

        elseif troop:is_ready() then
            if troop.action == TroopAction.DefultFollow then
                local dest = get_ety(troop.owner_eid)
                union_hall_t.battle_room_update_ety(OPERATOR.UPDATE, dest)

                local one = troop:split_pid(self.pid)
                one.curx, one.cury = get_ety_pos(dest)
                one.action = TroopAction.SupportArm
                one:back()

            elseif troop.is_mass == 1 then
                local pid = self.pid
                if pid == troop.owner_pid then
                    troop_mng.dismiss_mass(troop)
                else
                    troop_mng.do_kick_mass(troop, pid)
                end
            end
        end
    end
end


function recall_all( self )
    local tids = copyTab( self.busy_troop_ids )
    for _, tid in pairs( tids ) do
        self:troop_recall( tid )
    end

    for _, tid in pairs( self.busy_troop_ids ) do

    end

end


function troop_acc(self, troopid, ratio)
    local troop = troop_mng.get_troop(troopid)
    if troop and troop.owner_eid == self.eid and (troop:is_go() or troop:is_back()) then

        local curx, cury = c_get_actor_pos(troop.eid)
        if not curx then return end
        local remain = calc_line_length(curx, cury, troop.dx, troop.dy)
        local remain_time = remain / troop.speed

        remain_time = remain_time * ratio * 0.01
        if remain_time < 1 then return end
        local speed = remain / remain_time

        troop.curx = curx
        troop.cury = cury
        troop.tmCur = gTime
        troop.speed = speed
        troop.tmOver = math.ceil(gTime + remain_time)

        local chg = gPendingSave.troop[ troop._id ]
        chg.curx    = troop.curx  
        chg.cury    = troop.cury  
        chg.tmCur   = troop.tmCur 
        chg.tmOver  = troop.tmOver
        chg.speed   = troop.speed 

        c_add_actor(troop.eid, troop.curx, troop.cury, troop.dx, troop.dy, gTime, troop.speed)
        etypipe.add(troop)
        troop:notify_owner()
        player_t.update_watchtower_speed(troop)

        --troop:save()
    end
end

function troop_arrive_at_time(self, tid, secs)
    local troop = troop_mng.get_troop(troopid)
    if troop and troop.owner_eid == self.eid and troop.status == TroopStatus.Moving then
        local curx, cury = c_get_actor_pos(troop.eid)
        local remain = calc_line_length(curx, cury, troop.dx, troop.dy)

    end
end


function troop_cure(self, troop)
    local old = self.pow_arm or 0
    local new = self:calc_pow_arm()
    if old > new then self:dec_pow(old-new)
    elseif new > old then self:inc_pow(new-old) end

    self:recalc_food_consume()
    local role = self.pid
    for pid, arm in pairs(troop.arms) do
        if pid == role then
            local count_cure = self:get_val("CountCure")
            local count = 0
            for id, num in pairs(self.hurts or {}) do count = count + num end
            for id, num in pairs(self.cures or {}) do count = count + num end
            
            local troop_hurt = {}
            local nhurt = 0
            for id, num in pairs(arm.hurt_soldier or {}) do
                table.insert(troop_hurt, {id, num})
                nhurt = nhurt + num
            end
            --arm.hurt_soldier = {}

            local thurt = arm.hurt_soldier or {}
            local tcure = {}

            if count < count_cure then
                local hurts = self.hurts
                if count + nhurt <= count_cure then
                    for _, v in pairs(troop_hurt) do
                        local id = v[1]
                        local num = v[2]
                        hurts[ id ] = (hurts[ id ] or 0) + num
                        tcure[ id ] = (tcure[ id ] or 0) + num
                    end
                else
                    local sortf = function (ida, idb)
                        local a = resmng.get_conf("prop_arm", ida[1])
                        local b = resmng.get_conf("prop_arm", idb[1])
                        if a and b then
                            if a.Lv > b.Lv then return true end
                            if a.Lv < b.Lv then return false end
                            if a.Mode < b.Mode then return true end
                        end
                        return false
                    end
                    table.sort(troop_hurt, sortf)

                    for _, v in pairs(troop_hurt) do
                        local id = v[1]
                        local num = v[2]
                        if count + num <= count_cure then
                            hurts[ id ] = (hurts[ id ] or 0) + num
                            tcure[ id ] = (tcure[ id ] or 0) + num
                            count = count + num
                        else
                            local remain = count_cure - count
                            if remain > 0 then
                                hurts[ id ] = (hurts[ id ] or 0) + remain
                                tcure[ id ] = (tcure[ id ] or 0) + remain
                                count = count_cure
                                break
                            end
                        end
                    end
                    self.hurts = hurts
                end
                local tdead = {}
                for id, num in pairs( thurt or {}  )do
                    local remain = num - (tcure[ id ] or 0)
                    if remain > 0 then
                        tdead[ id ] = remain
                    end
                end
                arm.hurt_soldier = tcure
                arm.dead_soldier = tdead
            end
            return count
        else

        end
    end
    return 0
end

function cure_on( self, start, over, timer_sn)
    local class = BUILD_CLASS.FUNCTION
    local mode = BUILD_FUNCTION_MODE.HOSPITAL
    local max_seq = (BUILD_MAX_NUM[class] and BUILD_MAX_NUM[class][mode]) or 1
    for i = 1, max_seq, 1 do
        local idx = self:calc_build_idx(class, mode, i)
        local build = self:get_build( idx )
        if build then
            if build.state == BUILD_STATE.WAIT or build.state == BUILD_STATE.WORK then
                build.state = BUILD_STATE.WORK
                build.tmStart = start
                build.tmOver = over
                if timer_sn then build.tmSn = timer_sn end
            end
        end
    end
end


function cure_off( self )
    local class = BUILD_CLASS.FUNCTION
    local mode = BUILD_FUNCTION_MODE.HOSPITAL

    local max_seq = (BUILD_MAX_NUM[class] and BUILD_MAX_NUM[class][mode]) or 1
    for i = 1, max_seq, 1 do
        local idx = self:calc_build_idx(class, mode, i)
        local build = self:get_build( idx )
        if build then
            if build.state == BUILD_STATE.WORK then
                build.state = BUILD_STATE.WAIT
                build.tmStart = 0
                build.tmOver = 0
                build.tmSn = 0
            end
        end
    end
end


function cure( self, arm, quick )
    if self.tm_cure > 0 and timer.get(self.tm_cure) then return ack(self, "cure", resmng.E_ALREADY_CURE, 0) end

    local hurts = self.hurts
    local total = 0
    local dura = 0
    local res = {0, 0, 0, 0}
    local proptab = resmng.prop_arm
    
    for id, num in pairs( arm ) do
        if hurts[ id ] and hurts[ id ] >= num then
            total = total + num
            local prop = proptab[ id ]
            if not prop then return ack(self, "cure", resmng.E_NO_CONF, id) end
            dura = dura + prop.TrainTime * 0.05 * num
            local cons = prop.Cons
            for _, v in pairs( cons ) do
                local mode = v[2]
                local pay = v[3]
                res[ mode ] = res[ mode ] + pay * 0.5 * num
            end
        else
            return ack(self, "cure", resmng.E_NO_HURT, id)
        end
    end

    local count = self:get_val("CountCure")
    if total > count then return ack(self, "cure", resmng.E_NO_CONF, 0) end

    if quick == 1 then
        local cons = {}
        for mode, num in pairs( res ) do
            if num > 0 then table.insert( cons, { resmng.CLASS_RES, mode, num } ) end
        end

        local cons_have, cons_need_buy = self:split_cons(cons)
        local gold_need = calc_cons_value(cons_need_buy) + calc_acc_gold(dura)
        if gold_need > 0 and gold_need > self.gold then return ack(self, "cure", resmng.E_NO_RES, mode) end

        -- 扣除 cons_have 和 gold_need
        self:dec_cons(cons_have, VALUE_CHANGE_REASON.CURE, true)
        if gold_need > 0 then
            self:do_dec_res(resmng.DEF_RES_GOLD, gold_need, VALUE_CHANGE_REASON.CURE)
        end

        local hurts = self.hurts
        for id, num in pairs( arm ) do
            hurts[ id ] = hurts[ id ] - num
        end

        local tmps = {}
        for k, v in pairs( hurts ) do
            if v > 0 then tmps[ k ] = v end
        end
        self.hurts = tmps
        self:add_home_arm( arm )
        reply_ok(self, "cure", 0)


    else
        for mode, num in pairs( res ) do
            if self:get_res_num( mode ) < math.ceil(num) then return ack(self, "cure", resmng.E_NO_RES, mode) end
        end

        for mode, num in pairs( res ) do
            self:do_dec_res( mode, math.ceil( num ), VALUE_CHANGE_REASON.CURE )
        end

        local hurts = self.hurts
        for id, num in pairs( arm ) do
            hurts[ id ] = hurts[ id ] - num
        end

        local tmps = {}
        for k, v in pairs( hurts ) do
            if v > 0 then tmps[ k ] = v end
        end

        dura = math.ceil( dura )
        self.hurts = tmps
        self.cures = arm
        self.tm_cure = timer.new("cure", dura, self.pid )
        self.cure_start = gTime
        self.cure_over = gTime + dura
        self:cure_on( gTime, gTime+dura, self.tm_cure)
        reply_ok(self, "cure", 0)
    end
end

function cure_acc( self, mode )
    if self.tm_cure and timer.get( self.tm_cure ) then 
        local remain = self.cure_over - gTime 
        remain = math.floor( remain * 0.5 )
        if remain > 1 then
            timer.acc( self.tm_cure, remain )
            self.cure_over = gTime + remain
            self:cure_on( gTime, gTime + remain)
        end
    end
end


function is_troop_full(self)
    if #self.busy_troop_ids  >= self:get_val("CountTroop") then return true end
end


function kick_mass(self, tid, pid)
    local troop = troop_mng.get_troop(tid)
    if not troop then return end
    if troop.owner_pid ~= self.pid then return end
    troop_mng.do_kick_mass(troop, pid)
end


function get_defense_troop(self)
    local troop = self:get_my_troop()
    local heros = self:get_defense_heros()
    if troop.arms[ self.pid ] == nil then
        troop.arms[ self.pid ] = {}
    end
    troop.arms[ self.pid ].heros = heros
    troop.arms[ self.pid ].hurt_soldier = {}

    return troop
end

function add_home_arm( self, arm )
    local troop = self:get_my_troop()
    if troop then
        troop:add_arm( self.pid, { live_soldier=arm} )
        self:recalc_food_consume()


        local old = self.pow_arm or 0
        local new = self:calc_pow_arm()
        if old > new then self:dec_pow(old-new) elseif new > old then self:inc_pow(new-old) end
        troop:save()

        Rpc:upd_arm(self, troop.arms[ self.pid ].live_soldier)
    end
    --任务
    local total = 0
    for id, num in pairs(arm) do
        total = total + num
    end
    task_logic_t.process_task(self, TASK_ACTION.CURE, 2, total)
end

