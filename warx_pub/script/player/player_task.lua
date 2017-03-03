module("player_t")

function init_task(self)
    --每日任务列表
    self._daily_task_list = nil

    --主线任务列表
    self._trunk_task_list = nil

    --支线任务列表
    self._branch_task_list = nil

    --目标任务列表
    self._target_task_list = nil

    --需要保存的任务ID数组
    self._need_save_id = {}

    --每日任务记录的数据
    self.activity = 0
    self.activity_box = {}
    self.daily_refresh_num = 1
    self.daily_refresh_time = gTime + 14400     --4*3600  4个小时

    for k, v in pairs(resmng.prop_task_init) do
        local prop_tab = resmng.prop_task_detail[v.TaskID]
        if prop_tab == nil then
            ERROR("accept task fail!! the task isn't exist: %d", v.TaskID)
            return
        end
        self:add_task_data(prop_tab)
    end
end

function clear_task(self)
    self._daily_task_list = nil
    self._trunk_task_list = nil
    self._branch_task_list = nil
    self._target_task_list = nil
    self._need_save_id = {}
end

function load_task_from_db(self)
    if self._daily_task_list == nil then
        self._daily_task_list = {}
    end
    if self._trunk_task_list == nil then
        self._trunk_task_list = {}
    end
    if self._branch_task_list == nil then
        self._branch_task_list = {}
    end
    if self._target_task_list == nil then
        self._target_task_list= {}
    end
    local db = dbmng:getOne()
    local info = db.task:find({pid=self.pid})
    while info:hasNext() do
        local unit = info:next()
        unit.pid = nil
        unit._id = nil

        if unit.task_type == TASK_TYPE.TASK_TYPE_DAILY then
            self._daily_task_list[unit.task_id] = unit

        elseif unit.task_type == TASK_TYPE.TASK_TYPE_TRUNK then
            self._trunk_task_list[unit.task_id] = unit

        elseif unit.task_type == TASK_TYPE.TASK_TYPE_BRANCH then
            self._branch_task_list[unit.task_id] = unit

        elseif unit.task_type == TASK_TYPE.TASK_TYPE_TARGET then
            self._target_task_list[unit.task_id] = unit

        end
    end
end

function get_task_by_type(self, task_type)
    if task_type == TASK_TYPE.TASK_TYPE_DAILY then
        if self._daily_task_list == nil then
            self:load_task_from_db()
        end
        return self._daily_task_list

    elseif task_type == TASK_TYPE.TASK_TYPE_TRUNK then
        if self._trunk_task_list == nil then
            self:load_task_from_db()
        end
        return self._trunk_task_list

    elseif task_type == TASK_TYPE.TASK_TYPE_BRANCH then
        if self._branch_task_list == nil then
            self:load_task_from_db()
        end
        return self._branch_task_list

    elseif task_type == TASK_TYPE.TASK_TYPE_TARGET then
        if self._target_task_list == nil then
            self:load_task_from_db()
        end
        return self._target_task_list

    end
end

--delete db
function do_delete_task(self, task_id)
    local prop_tmp = resmng.prop_task_daily[task_id]
    if prop_tmp == nil or prop_tmp.TaskType ~= TASK_TYPE.TASK_TYPE_DAILY then
        return
    end
    local _id = self.pid.."_"..task_id
    gPendingDelete.task[_id] = 0
end

--save db
function do_save_task(self)
    if #(self._need_save_id or {}) <= 0 then
        return
    end
    for k, v in ipairs(self._need_save_id) do
        local data = self:get_task_by_id(v)
        if data ~= nil then
            local _id = self.pid.."_"..data.task_id
            local save = copyTab(data)
            save._id = _id
            save.pid = self.pid
            gPendingInsert.task[_id] = save
            dumpTab( save, "do_save_task" )
            
            -- if data.task_status == TASK_STATUS.TASK_STATUS_CAN_FINISH then
            --     self:open_build_by_task(data.task_id)
            -- end
            self:notify_task_change(data) 
        end
        
    end
    self._need_save_id = {}
    --]]
end

function add_save_task_id(self, task_id)
    self._need_save_id = self._need_save_id or {} 
    table.insert(self._need_save_id, task_id)
end

function get_task_by_id(self, task_id)
    local key = task_id

    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_DAILY)
    if tab[key] ~= nil then return tab[key] end

    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TRUNK)
    if tab[key] ~= nil then return tab[key] end

    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_BRANCH)
    if tab[key] ~= nil then return tab[key] end

    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TARGET)
    if tab[key] ~= nil then return tab[key] end

    return nil
end

function add_task_data(self, task_info)
    local has_unit = self:get_task_by_id(task_info.ID)
    if has_unit ~= nil then
        return false
    end

    local unit = {}
    unit.task_id = task_info.ID
    unit.task_status = TASK_STATUS.TASK_STATUS_ACCEPTED
    unit.task_type = task_info.TaskType

    unit.task_current_num = 0
    unit.task_daily_num = 0

    local tab = self:get_task_by_type(unit.task_type)
    local func = nil
    if unit.task_type == TASK_TYPE.TASK_TYPE_DAILY then
        func = unpack(resmng.prop_task_daily[unit.task_id].FinishCondition)
        
    elseif unit.task_type == TASK_TYPE.TASK_TYPE_TRUNK then
        func = unpack(resmng.prop_task_detail[unit.task_id].FinishCondition)

    elseif unit.task_type == TASK_TYPE.TASK_TYPE_BRANCH then
        func = unpack(resmng.prop_task_detail[unit.task_id].FinishCondition)

    elseif unit.task_type == TASK_TYPE.TASK_TYPE_TARGET then
        func = unpack(resmng.prop_task_detail[unit.task_id].FinishCondition)

    end
    unit.task_action = g_task_func_relation[func]
    tab[unit.task_id] = unit

    self:add_save_task_id(unit.task_id)
    self:do_save_task()

    return true
end

function get_task_by_action(self, task_action)
    local task_array = {}
    local find = function(array)
        for k, v in pairs(array or {}) do
            if v.task_action == task_action and v.task_status == TASK_STATUS.TASK_STATUS_ACCEPTED then
                table.insert(task_array, v)
            end
        end
    end

    local tab = nil
    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_DAILY)
    find(tab)

    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TRUNK)
    find(tab)

    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_BRANCH)
    find(tab)

    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TARGET)
    find(tab)

    return task_array
end

function packet_list(self, src, list)
    for k, v in pairs(src) do
        if v.task_type == TASK_TYPE.TASK_TYPE_TRUNK then
            if v.task_status == TASK_STATUS.TASK_STATUS_ACCEPTED or v.task_status == TASK_STATUS_CAN_FINISH then
                local unit = {}
                unit.task_id = v.task_id
                unit.task_type = v.task_type
                unit.task_status = v.task_status
                unit.current_num = v.task_current_num
                table.insert(list, unit)
            end

        elseif v.task_type == TASK_TYPE.TASK_TYPE_BRANCH then
            if v.task_status == TASK_STATUS.TASK_STATUS_ACCEPTED or v.task_status == TASK_STATUS_CAN_FINISH then
                local unit = {}
                unit.task_id = v.task_id
                unit.task_type = v.task_type
                unit.task_status = v.task_status
                unit.current_num = v.task_current_num
                table.insert(list, unit)
            end

        elseif v.task_type == TASK_TYPE.TASK_TYPE_DAILY then
            local unit = {}
            unit.task_id = v.task_id
            unit.task_type = v.task_type
            unit.task_status = v.task_status
            unit.current_num = v.task_current_num
            unit.task_daily_num = v.task_daily_num
            unit.task_group_id = resmng.prop_task_daily[unit.task_id].GroupID
            table.insert(list, unit)

        elseif v.task_type == TASK_TYPE.TASK_TYPE_TARGET then
            local unit = {}
            unit.task_id = v.task_id
            unit.task_type = v.task_type
            unit.task_status = v.task_status
            unit.current_num = v.task_current_num
            table.insert(list, unit)
        end
    end
end

function packet_life_task(self)
    local msg_send = {}
    local tab = nil
    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TRUNK)
    self:packet_list(tab, msg_send)
    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_BRANCH)
    self:packet_list(tab, msg_send)  

    Rpc:life_task_list_resp(self, msg_send)
end

function life_task_list(self)
    self:packet_life_task()
end

function get_task_award(self, task_id)
    local info = self:get_task_by_id(task_id)

    if info == nil or info.task_status ~= TASK_STATUS.TASK_STATUS_CAN_FINISH then
        return false
    end
    local prop_task = resmng.prop_task_detail[task_id]
    if prop_task == nil then
        return false
    end

    info.task_status = TASK_STATUS.TASK_STATUS_FINISHED
    self:add_save_task_id(info.task_id)
    self:do_save_task()

    --扣除任务物品
    local func, con_id, con_num, is_deduct = unpack(prop_task.FinishCondition)
    if func == "get_item" and is_deduct == 1 then
        self:dec_item_by_item_id(con_id, con_num, VALUE_CHANGE_REASON.REASON_TASK_DEC_ITEM)
    end

    --加奖励
    local bonus_policy = resmng.prop_task_detail[task_id].BonusPolicy
    local bonus = resmng.prop_task_detail[task_id].Bonus
    self:add_bonus(bonus_policy, bonus, VALUE_CHANGE_REASON.REASON_TASK)

    --开启建筑
    self:open_build_by_task(info.task_id)

    self:pre_tlog("QuestComplete",task_id )
    return true
end

function finish_task(self, task_id)
    LOG( "finish_task, pid=%d, task_id=%s", self.pid, task_id )
    local res = self:get_task_award(task_id)
    if res == true then
        Rpc:finish_task_resp(self, 0)
    else
        Rpc:finish_task_resp(self, 1)
    end
end

function can_take_task(self, task_id)
    local prop_tab = resmng.prop_task_detail[task_id]
    if prop_tab == nil then
        return false
    end

    local pre_task_id = prop_tab.PreTask
    local pre_task_condition = prop_tab.PreCondition

    --判断这个任务是否已接
    local task_data = self:get_task_by_id(task_id)
    if task_data ~= nil then
        return false
    end

    --判断前置任务
    if pre_task_id ~= nil then
        local pre_task_data = self:get_task_by_id(pre_task_id)
        if pre_task_data == nil then
            return false
        end
        if pre_task_data.task_status ~= TASK_STATUS.TASK_STATUS_CAN_FINISH and
            pre_task_data.task_status ~= TASK_STATUS.TASK_STATUS_FINISHED then
            return false
        end
    end

    --判断前置条件
    return self:doCondCheck(unpack(pre_task_condition))
end

-- function take_life_task(self)
--     for k, v in pairs(resmng.prop_task_detail) do
--         if v.TaskType == TASK_TYPE.TASK_TYPE_TRUNK or v.TaskType == TASK_TYPE.TASK_TYPE_BRANCH then
--             local can_take = self:can_take_task(v.ID)
--             if can_take == true then
--                 self:add_task_data(v)
--             end
--         end
--     end
-- end

function check_finish(self, task_id, func, ...)
    local task_data = self:get_task_by_id(task_id)
    if task_data == nil then
        return
    end
    local res = task_logic_t.distribute_operation(self, task_data, func, ...)
    if res == true then
        self:add_save_task_id(task_id)
        self:do_save_task()
    end
end

function accept_task(self, task_id_array)
    for k, v in pairs(task_id_array) do
        local can_take = self:can_take_task(v)
        if can_take == true then
            local accept_task_data = resmng.prop_task_detail[v]
            self:add_task_data(accept_task_data)
            self:check_finish(accept_task_data.ID, unpack(accept_task_data.FinishCondition))
        end
    end
end

--玩家登陆的时候把所有任务发给客户端
function packet_all_task_id(self)
    local list = {}
    local function insert(data)
        for k, v in pairs(data) do
            local unit = {}
            --完成了的任务只发ID
            if v.task_status == TASK_STATUS.TASK_STATUS_FINISHED then
                unit.task_id = v.task_id
            elseif v.task_status == TASK_STATUS.TASK_STATUS_ACCEPTED then
                unit.task_id = v.task_id
                unit.task_status = v.task_status
                unit.current_num = v.task_current_num
                if v.hp ~= nil then
                    unit.hp = v.hp
                end
            elseif v.task_status == TASK_STATUS.TASK_STATUS_CAN_FINISH then
                unit.task_id = v.task_id
                unit.task_status = v.task_status
            end

            table.insert(list, unit)
        end
    end

    local tab = nil
    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TRUNK)
    insert(tab)
    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_BRANCH)
    insert(tab)

    return list
end

--任务改变了通知客户端
function notify_task_change(self, task_data)
    local msg_send = {}
    local unit = {}
    unit.task_id = task_data.task_id
    unit.task_type = task_data.task_type
    unit.task_status = task_data.task_status
    unit.current_num = task_data.task_current_num
    if task_data.hp ~= nil then
        unit.hp = task_data.hp
        unit.eid = task_data.monster_eid
    end
    if unit.task_type == TASK_TYPE.TASK_TYPE_DAILY then
        unit.task_daily_num = task_data.task_daily_num
        unit.task_group_id = resmng.prop_task_daily[unit.task_id].GroupID
    end
    table.insert(msg_send, unit)
    Rpc:update_task_info(self, msg_send)
    print("update_task_info", self.pid, task_data.task_id )
end

--完成打开界面任务
function finish_open_ui(self, ui_id)
    task_logic_t.process_task(self, TASK_ACTION.OPEN_UI, ui_id)
end



----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--每日任务

--判断每日任务是否可接
function can_take_daily_task(self, prop_task)
    if prop_task == nil then
        return false
    end
    --判断这个任务是否已接
    local task_data = self:get_task_by_id(prop_task.ID)
    if task_data ~= nil then
        return false
    end

    --判断前置条件
    local class, mode, lv = unpack(prop_task.PreCondition)
    if class == resmng.CLASS_BUILD then
        local t = resmng.prop_build[ mode ]
        if t then
            local c = t.Class
            local m = t.Mode
            local l = t.Lv
            for _, v in pairs(self:get_build()) do
                local n = resmng.prop_build[ v.propid ]
                if n and n.Class == c and n.Mode == m and n.Lv >= l and n.Lv <= lv then
                    return true
                end
            end
        end
    elseif class == resmng.CLASS_PLAYER_LEVEL then
        return (self.lv >= mode and self.lv <= lv)
    elseif class == resmng.CLASS_UNION_LEVEL then
        local union = unionmng.get_union(self:get_uid())
        if union == nil then
            return false
        end
        return (union.level >= mode and union.level <= lv)
    end
end

function select_daily_task(self, task_group)
    if task_group == nil then
        return -1
    end
    local can_take = {}
    local t_weight = 0
    for k, v in pairs(task_group) do
        local prop_task = resmng.prop_task_daily[v]
        if self:can_take_daily_task(prop_task) == true then
            table.insert(can_take, v)
            t_weight = t_weight + prop_task.CorolWeight
        end
    end

    if t_weight > 0 then
        local p = math.random(t_weight)
        local tmp_p = 0
        for k, v in pairs(can_take) do
            tmp_p = tmp_p + resmng.prop_task_daily[v].CorolWeight
            if p <= tmp_p then
                return v
            end
        end
    end
    return -1
end

function take_daily_task(self)
    local task_group = {}
    for k, v in pairs(resmng.prop_task_daily) do
        if task_group[v.GroupID] == nil then
            task_group[v.GroupID] = {}
        end
        table.insert(task_group[v.GroupID], v.ID)
    end

    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_DAILY)
    for k, v in pairs(tab) do
        local prop_tmp = resmng.prop_task_daily[v.task_id]
        if prop_tmp ~= nil then
            if task_group[prop_tmp.GroupID] ~= nil then
                task_group[prop_tmp.GroupID] = nil
            end
        end
    end

    for k, v in pairs(task_group) do
        local task_id = self:select_daily_task(v)
        if task_id ~= -1 then
            local prop_daily = resmng.prop_task_daily[task_id]
            self:add_task_data(prop_daily)
            self:check_finish(prop_daily.ID, unpack(prop_daily.FinishCondition))
        end
    end
end

function on_day_pass_daily_task(self)
    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_DAILY)
    for k, v in pairs(tab) do
        self:do_delete_task(v.task_id)
    end
    self._daily_task_list = {}

    self.activity = 0
    self.activity_box = {}
    self.activity_box = self.activity_box
    self.daily_refresh_num = 1
    self.daily_refresh_time = gTime + 14400     --4*3600  4个小时
    self:take_daily_task()
end

function packet_daily_task(self)
    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_DAILY)
    local msg_send = {}
    self:packet_list(tab, msg_send)
    Rpc:daily_task_list_resp(self, msg_send)
end

function daily_task_list(self)
    self:packet_daily_task()
end

function refresh_daily_task(self)
    self:calc_daily_refresh_time()
    if self.daily_refresh_num > 0 then
        self.daily_refresh_num = self.daily_refresh_num - 1
    else
        --判断金币是否够
        ----[[
        if self.gold < 200 then
            Rpc:refresh_daily_task_resp(self, 1)
            return
        end
        self:consume(REFRESH_DAILY_TASK_CON, 1, VALUE_CHANGE_REASON.REASON_DAILY_TASK_REFERSH)
        --]]
    end

    local unfinish = {}
    local tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_DAILY)
    for k, v in pairs(tab) do
        if v.task_status ~= TASK_STATUS.TASK_STATUS_FINISHED then
            local unit = {}
            unit.group_id = resmng.prop_task_daily[v.task_id].GroupID
            unit.task_id = v.task_id
            table.insert(unfinish, unit)
        end
    end

    local task_group = {}
    for k, v in pairs(resmng.prop_task_daily) do
        if task_group[v.GroupID] == nil then
            task_group[v.GroupID] = {}
        end
        table.insert(task_group[v.GroupID], v.ID)
    end

    for k, v in pairs(unfinish) do
        self:do_delete_task(v.task_id)
        tab[v.task_id] = nil
        local group_info = task_group[v.group_id]
        local task_id = self:select_daily_task(group_info)
        if task_id ~= -1 then
            local prop_daily = resmng.prop_task_daily[task_id]
            self:add_task_data(prop_daily)
            self:check_finish(prop_daily.ID, unpack(prop_daily.FinishCondition))
        end
    end

    self:get_daily_refresh_time()
    Rpc:refresh_daily_task_resp(self, 0)
end

function daily_task_activity(self)
    local msg_send = {}
    msg_send.activity = self.activity
    msg_send.activity_box = self.activity_box
    Rpc:daily_task_activity_resp(self, msg_send)
end



function get_activity_box(self, id)
    if id <= 0 or id > 5 then
        Rpc:get_activity_box_resp(self, 1)
        return
    end
    if self.activity_box[id] ~= nil then
        Rpc:get_activity_box_resp(self, 2)
        return
    end
    if self.activity < TASK_ACTIVITY[id] then
        Rpc:get_activity_box_resp(self, 3)
        return
    end

    --领奖
    local castle_level = self:get_castle_lv()
    local prop_award = resmng.prop_task_daily_award[castle_level]
    local function get_award_by_boxid()
        if id == 1 then
            return prop_award.BonusPolicy1, prop_award.Bonus1
        elseif id == 2 then
            return prop_award.BonusPolicy2, prop_award.Bonus2
        elseif id == 3 then
            return prop_award.BonusPolicy3, prop_award.Bonus3
        elseif id == 4 then
            return prop_award.BonusPolicy4, prop_award.Bonus4
        elseif id == 5 then
            return prop_award.BonusPolicy5, prop_award.Bonus5
        end
    end
    if prop_award ~= nil then
        local bonus_policy, bonus = get_award_by_boxid()
        self:add_bonus(bonus_policy, bonus, VALUE_CHANGE_REASON.REASON_TASK_DAILY_BOX)
    end


    self.activity_box[id] = true
    self.activity_box = self.activity_box
    Rpc:get_activity_box_resp(self, 0)
end

function add_activity(self, task_id)
    local prop_task = resmng.prop_task_daily[task_id]
    if prop_task == nil then
        return
    end
    self:inc_activity(prop_task.ActiveNum)
end

function inc_activity(self, value)
    self.activity = self.activity + value
    union_mission.ok(self, UNION_MISSION_CLASS.ACTIVE, value)
    kw_mall.add_kw_point(value)
    task_logic_t.process_task(self, TASK_ACTION.FINISH_DAILY_TASK)
end

function calc_daily_refresh_time(self)
    for i = 1, 7 do
        if gTime >= self.daily_refresh_time then
            self.daily_refresh_time = self.daily_refresh_time + 14400
            self.daily_refresh_num = self.daily_refresh_num + 1
        end
        if gTime < self.daily_refresh_time then
            break
        end
    end
end

function get_daily_refresh_time(self)
    self:calc_daily_refresh_time()
    local msg_send = {}
    msg_send.left_num = self.daily_refresh_num
    msg_send.time = self.daily_refresh_time
    Rpc:get_daily_refresh_time_resp(self, msg_send)
end

function daily_task_done(self, task_id)
    local task_info = self:get_task_by_id(task_id)
    if task_info == nil then
        Rpc:daily_task_done_resp(self, 1)
        return
    end
    if task_info.task_status ~= TASK_STATUS.TASK_STATUS_ACCEPTED then
        Rpc:daily_task_done_resp(self, 2)
        return
    end
    --计算金币
    local prop_tab = resmng.prop_task_daily[task_id]
    local left_activity = (prop_tab.FinishNum - task_info.task_daily_num) * prop_tab.ActiveNum
    local need_gold = left_activity * DONE_DAILY_TASK_GOLD
    if self.gold < need_gold then
        Rpc:daily_task_done_resp(self, 3)
        return
    end
    local res = {{resmng.CLASS_RES, resmng.DEF_RES_GOLD, need_gold}}
    self:consume(res, 1, VALUE_CHANGE_REASON.REASON_DAILY_TASK_DONE_TASK)

    task_info.task_status = TASK_STATUS.TASK_STATUS_FINISHED
    task_info.task_daily_num = prop_tab.FinishNum
    self:inc_activity(left_activity)
    self:add_save_task_id(task_id)
    self:do_save_task()
    self:daily_task_activity()

    Rpc:daily_task_done_resp(self, 0)
end


--完成任务开启建筑
function open_build_by_task(self, task_id)
    for k, v in pairs(resmng.prop_citybuildview) do
        if v.OpenCond ~= nil then
            if task_id == v.OpenCond[2] then
                local build_id = v.PropId
                local bs = self:get_build()
                local conf = resmng.get_conf("prop_build", build_id)
                local build_idx = self:calc_build_idx(conf.Class, conf.Mode, 1)
                if bs[ build_idx ] == nil then
                    local build = build_t.create(build_idx, self.pid, build_id, 0, 0, BUILD_STATE.CREATE)
                    bs[ build_idx ] = build
                    build.tmSn = 0
                    self:doTimerBuild( 0, build_idx )
                end
            end
        end
    end
end


----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--目标任务
-- function take_target_task(self)
--     for k, v in pairs(resmng.prop_task_detail) do
--         if v.TaskType == TASK_TYPE.TASK_TYPE_TARGET then
--             local can_take = self:can_take_task(v.ID)
--             if can_take == true then
--                 self:add_task_data(v)
--             end
--         end
--     end
-- end

function packet_target_task(self)
    local msg_send = {}
    tab = self:get_task_by_type(TASK_TYPE.TASK_TYPE_TARGET)
    self:packet_list(tab, msg_send)
    return msg_send
end


















--GM 测试指令
----------------------------------------------------------------------
function gm_finish_task(self, task_id)
    local task = self:get_task_by_id(task_id)
    if task == nil then
        return
    end
    task.task_status = TASK_STATUS.TASK_STATUS_CAN_FINISH
    self:add_save_task_id(task_id)
    self:do_save_task()
end

function gm_accept_task(self, task_id)
    local prop_tab = resmng.prop_task_detail[task_id]
    if prop_tab == nil then
        return
    end
    self:add_task_data(prop_tab)
end

function get_silver( self )
    return self.silver
end



