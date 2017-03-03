module("crontab", package.seeall)

local function doCheck(val, pat)
    val = tonumber(val)
    for w in string.gmatch(pat, "[%d*/-]+") do
        local handle = false
        if w == "*"  then return true end
        local n = tonumber(w)
        if n then
            if val == n then return true end
            handle = true
        end

        if not handle then
            local b, e = string.find(w, "%d+-%d+")
            if b then
                local s = string.find(w, "-")
                local vb = tonumber(string.sub(w, b, s-1))
                local ve = tonumber(string.sub(w, s+1, e))
                if val >= vb and val <= ve then return true end
                handle = true
            end
        end

        if not handle then
            local b, e = string.find(w, "*/%d+")
            if b then
                local s = string.find(w, "/")
                e = tonumber(string.sub(w, s+1, e))
                if e > 0 then
                    if val % e == 0 then return true end
                end
                handle = true
            end
        end
    end
end

local function check(t, node)
    for _, v in pairs({"min", "hour", "day", "month", "wday"}) do
        if v == "wday" then
            if not doCheck(t[v]-1, node[v]) then return false end
        else
            if not doCheck(t[v], node[v]) then return false end
        end
    end
    return true
end

function initBoot()
    INFO("crontab, initBoot")
    if resmng and resmng.prop_cron then
        for _, v in pairs(resmng.prop_cron) do
            if v.boot == true and (v.game == "*" or tonumber(v.game) == _G.gMapID) then
                local fun = crontab[ v.action ]
                if fun then
                    INFO("crontab, initBoot, %s", v.action)
                    fun(unpack(v.arg or {}))
                end
            end
        end
    end
    _G.gInit = "InitCronBootDone"
end

function loop()
    LOG("[CRONTAB], loop, %d", gTime)
    if resmng and resmng.prop_cron then
        local t = os.date("*t", gTime)
        local gameid = _G.gMapID
        for k, v in pairs(resmng.prop_cron) do
            if v.game == "*" or tonumber(v.game) == gameid then
                if check(t, v) then
                    local fun = crontab[ v.action ]
                    if fun then
                        INFO("[CRONTAB], %s", v.action)
                        action(fun, unpack(v.arg or {}))
                    end
                end
            end
        end
    end
end

function setDayStart()
    local now = os.date("*t", gTime)
    local flag = false

    local hour = 5
    for k, v in pairs(resmng.prop_cron) do
        if v.action == "setDayStart" then
            hour =  tonumber(v.hour)
        end
    end
    if now.hour < hour then flag = true end

    now.hour = hour
    now.min = 0
    now.sec = 0
    local tick = os.time(now)
    if flag then tick = tick - 24 * 3600 end
    _G.gDayStart = tick
end



--------------------
--crontab function--
--------------------
--
function cronTest(i, s)
    LOG("crontab.cronTest, i=%d, s=%s, gTime=%d, real=%d", i, s, gTime, c_time_real() or 0)
end

function clean()

end

