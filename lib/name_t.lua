module(..., package.seeall)
_d = {}--数据

function load(conf)
    local mongo = require "mongo"
    for name,v  in pairs(conf) do
        local db = mongo.client(v)
        local info = db[name].name:find({})
        while info:hasNext() do
            local d = info:next()
            _d[d._id]=d
            if  type(d.name)=="number"  and g_tid < d.pid then
                g_tid = d.pid
            end
        end
    end
end


function login( tid,pwd,sid,pid )

    local self = _d[tid] 
    if not self then
        g_tid = g_tid + 1
        tid = tostring(g_tid)
        self = {_id=tid,pwd=pwd }
    end

    if not self[pid] then
        g_pid = g_pid + 1
        self[g_pid] = sid
        pid = g_pid
    end

    if pwd ~= self.pwd then return end
    self.online = pid 
    save(self)
end

function save(self)
    _d[self._id]=self
    save_t.data.name[self._id]=self
end

function new(server,name,pwd)
    if not _d[name] then
        cur = cur + 1
        local id = server.."_"..cur
        _d[name]={_id=id,pid=cur,name=name,pwd=pwd}
        return _d[name]
    end
end


