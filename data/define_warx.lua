json = require "json"

_list={

    db_server1 ={ 
        db1={ host = "192.168.100.12", port = 27017, },
        --db1={ host = "127.0.0.1", port = 27017, },
        -- db={  host = "127.0.0.1", port = 27017,username="admin",password="admin" },
    },

    warx = {   host = "192.168.103.225", port = 8888, maxclient=3000, room ="room1", db_name = "db_server1" }, 
   --warx = {   host = "10.0.2.15", port = 8888, maxclient=3000, room ="room1", db_name = "db_server1" }, 
}

--基础库
function copy(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end  -- if
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end  -- for
        return new_table
        --return setmetatable(new_table, getmetatable(object))
    end  -- function _copy
    return _copy(object)
end  -- function deepcopy

function split(str, reps)  --分割字符串
    local resultStrsList = {};
    string.gsub(str, '[^' .. reps ..']+', function(w) table.insert(resultStrsList, w) end );
    return resultStrsList;
end

function load_file (path)--读取csv文件数据为lua表
    local file = io.open(path,"r")
    for line in file:lines() do
    local t = split(line, ",");
    for k, v in pairs(t) do
        print(v);
    end
    end
    file:close()
end

function save_file (mod,path,buf)
    local file= io.open(path,mod)
    file:write("\n"..buf)
    file:close()
end


function print_r(sth)

    if type(sth) ~= "table" then
        cprint(sth.."")
        return
    end

    local space, deep = string.rep(' ', 2), 0
    local function _dump(t)
        local temp = {}

        for k,v in pairs(t) do
            local key = tostring(k)

            if type(v) == "table" then

                deep = deep + 2
                cprint(string.format( "%s[%s]=\n%s(", string.rep(space, deep - 1), key, string.rep(space, deep))) 
                _dump(v)
                cprint(string.format("%s)",string.rep(space, deep)))
                deep = deep - 2

            else
                cprint(string.format("%s[%s]=%s", string.rep(space, deep + 1), key, v)) 
            end 
        end 
    end

    cprint("(")
    _dump(sth)
    cprint(")")
end

function cprint(s,color)--颜色答应
    color = color or "echo -e \"\\033[40;31;2m" 
    local cool = color..s.." \\033[0m \"" 
    os.execute(cool) 
end

function log(...)--日志
    local info = debug.getinfo(3)
    local d = "["..(info.short_src or "FILE")..":"..(info.currentline or 0).."]"..":"
    for _,v in pairs({...}) do
        d = d..json.encode(v).."@"
    end
    print(d)
    os.execute("logger -p local0.info "..d )
end

function lxz(...)--打印lua变量数据到日志文件
  local info = debug.getinfo(2)
  local head = "["..(info.short_src or "FILE")..":"..(info.name or "")..":"..(info.currentline or 0).."]"
  cprint(head,"echo -e \"\\033[40;34;2m")
    for _,v in pairs({...}) do
        print_r(v)
    end
end

function lxz1(...)--打印lua变量数据到日志文件
  local info = debug.getinfo(2)
  cprint(debug.traceback(),"echo -e \"\\033[40;34;2m")
  for _,v in pairs({...}) do
        print_r(v)
  end
end

    getfenv = getfenv or function(f)
        f = (type(f) == 'function' and f or debug.getinfo(f + 1, 'f').func)
        local name, val
        local up = 0
        repeat
            up = up + 1
            name, val = debug.getupvalue(f, up)
        until name == '_ENV' or name == nil
        return val
    end

    setfenv = setfenv or function(f, t) --lua5.3 没有,模拟一个
        f = (type(f) == 'function' and f or debug.getinfo(f + 1, 'f').func)
        local name
        local up = 0
        repeat
            up = up + 1
            name = debug.getupvalue(f, up)
        until name == '_ENV' or name == nil
        if name then
            debug.upvaluejoin(f, up, function() return name end, 1) -- use unique upvalue
            debug.setupvalue(f, up, t)
        end
    end


    module = module or function(mname)  --lua5.3 没有,模拟一个
        _ENV[mname] = _ENV[mname] or {}
        setmetatable(_ENV[mname], {__index = _ENV})
        setfenv(2, _ENV[mname])
    end
-----------------------------------warx项目专用----------------------------------------------
--

function init_pending()
    __mt_rec = {
        __index = function (self, recid)
            local t = self.__cache[ recid ]
            if t then
                self.__cache[ recid ] = nil
                t._n_ = nil
            else
                t = {}
            end
            self[ recid ] = t
            return t
        end
    }
    __mt_tab = {
        __index = function (self, tab)
            local t = { __cache={} }
            setmetatable(t, __mt_rec)
            self[ tab ] = t
            return t
        end
    }
    setmetatable(gPendingSave, __mt_tab)


    __mt_del_rec = {
        __newindex = function (t, k, v)
            gPendingSave[ t.tab_name ][ k ]._a_ = 0
        end
    }
    __mt_del_tab = {
        __index = function (self, tab)
            local t = {tab_name=tab}
            setmetatable(t, __mt_del_rec)
            self[ tab ] = t
            return t
        end
    }
    setmetatable(gPendingDelete, __mt_del_tab)

    __mt_new_rec = {
        __newindex = function (t, k, v)
            gPendingSave[ t.tab_name ][ k ] = v
            v._a_ = 1
        end
    }
    __mt_new_tab = {
        __index = function (self, tab)
            local t = {tab_name=tab}
            setmetatable(t, __mt_new_rec)
            self[ tab ] = t
            return t
        end
    }
    setmetatable(gPendingInsert, __mt_new_tab)

end

function load_sys_config()
    local db = dbmng:getOne()
    local info = db.config:findOne({_id=gMapID})
    if info then
        gSysConfig = info
    else
        gSysConfig = {_id=gMapID, create=gTime}
        db.config:insert(gSysConfig)
    end
end

function load_uniq()
    local db = dbmng:getOne()
    local info = db.uniq:find({})
    gUniqs = {}
    if info then
        while info:hasNext() do
            local b = info:next()
            gUniqs[ b._id ] = b
        end
    end
end

function warx_init()
    _G.GateSid = 1 
    _G.gAgent = {pid=0, account="@ConGate", gid=_G.gGateSid}
    gTime = os.time() 
    gMapNew = 1

    gActions = {}
    gSns = {}
    gFrame = 0
    gConns = {}
    gPlys = {}
    gAccs = {}
    gAccounts = {}
    gEtys = {}

    gPendingSave = {}
    gPendingDelete = {}
    gPendingInsert = {}
    init_pending()

    gInit = "StateBeginInit"
    require("frame/tools")
    --require("frame/debugger")
    require("frame/conn")
    require("frame/crontab")
    require("frame/dbmng")
    require("frame/timer")
    require("frame/socket")
    require("frame/class")
    require("frame/frame")
    doLoadMod("packet", "frame/rpc/packet")
    doLoadMod("MsgPack", "frame/MessagePack")
    doLoadMod("Array", "frame/rpc/array")
    doLoadMod("Struct", "frame/rpc/struct")
    doLoadMod("RpcType", "frame/rpc/rpctype")
    doLoadMod("Rpc", "frame/rpc/rpc")
    require("frame/player_t")

    gSysMailSn = 0
    gSysMail = {}
    gSysStatus = {}

    do_load("resmng")
    do_load("game")
    do_load("common/define")
    do_load("common/tools")
    do_load("common/protocol")
    do_load("common/rpc_parse")

    do_load("timerfunc")

    do_load("public_t")

    do_load("player_t")
    do_load("player/player_item")
    do_load("player/player_mail")
    do_load("player/player_union")
    do_load("player/player_res")
    do_load("player/player_hero")
    do_load("player/player_build")
    do_load("player/player_task")
    do_load("player/player_online_award")
    do_load("player/player_month_award")
    do_load("player/player_skill")
    do_load("player/player_gacha")

    do_load("build_t")
    do_load("arm_t")

    do_load("player/player_troop")
    do_load("troop_t")
    do_load("troop_mng")


    do_load("heromng")
    do_load("hero/hero_t")

    do_load("fight")
    do_load("farm")
    do_load("restore_handler")

    do_load("unionmng")
    do_load("union_t")
    do_load("union_member_t")
    do_load("union_tech_t")
    do_load("union_build_t")
    do_load("union_hall_t")
    do_load("union_help")
    do_load("union_item")
    do_load("union_relation")
    do_load("union_god")

    do_load("npc_city")
    do_load("king_city")
    do_load("monster")
    do_load("monster_city")
    do_load("crontab")
    do_load("room")
    do_load("union_mall")
    do_load("union_task")
    do_load("union_mission")
    do_load("union_word")
    do_load("union_buildlv")
    do_load("new_union")
    do_load("triggers")
    do_load("task_logic_t")
    do_load("msglist")
    do_load("lost_temple")
    do_load("gacha_limit_t")
    do_load("kw_mall")
    do_load("use_item_logic")
    do_load("rank_mng")

    do_load("gmmng")
    local rt = restore_handler.action()
    if rt == "Compensation" then
        gInit = "InitCompensate"
    else
        gInit = "InitGameDone"
    end

    gMapID=1 
    load_sys_config()
    load_uniq()
end

function check_pending()
    player_t.check_pending()
    build_t.check_pending()
    hero_t.check_pending()
    union_t.check_pending()
    room.check_pending()
    npc_city.check_pending()
end
