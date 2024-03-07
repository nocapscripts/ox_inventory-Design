-- Config file check
local resourceName = "rs_inventory"
local filePath = "rs_inventory/config.lua"
local function fileExists(resourceName, filePath)
    local resourcePath = "/" .. resourceName .. "/" .. filePath
    return LoadResourceFile(resourceName, filePath) ~= nil
end



if fileExists(resourceName, filePath) then
    print("File exists!")
else
    print("File does not exist.")
end

if not Config then 
    print("An error occured from Config file")

else 
    print("Config file loaded")
end

local function addDeferral(err)
    err = err:gsub("%^%d", "")

    AddEventHandler('playerConnecting', function(_, _, deferrals)
        deferrals.defer()
        deferrals.done(err)
    end)
end

-- Do not modify this file at all. This isn't a "config" file. You want to change
-- resource settings? Use convars like you were told in the documentation.
-- You did read the docs, right? Probably not, if you're here.
-- https://overextended.dev/ox_inventory#config

shared = {
    resource = GetCurrentResourceName(),
    framework = Config.Framework,
    playerslots = Config.Slots,
    playerweight = Config.Weight,
    target = Config.Target,
    police = json.decode(Config.Police),
}

do
    if type(shared.police) == 'string' then
        shared.police = { shared.police }
    end

    local police = table.create(0, shared.police and #shared.police or 0)

    for i = 1, #shared.police do
        police[shared.police[i]] = 0
    end

    shared.police = police
end

if IsDuplicityVersion() then
    server = {
        bulkstashsave = Config.StashSave or 1,
        loglevel = Config.Logs,
        randomprices = Config.RandomPrices or 1,
        randomloot = Config.Randomloot or 1,
        evidencegrade = Config.Evidencegrade or 2,
        trimplate = Config.Trimplate or 1,
        vehicleloot = json.decode(Config.Vehicleloot),
        dumpsterloot = json.decode(Config.Dumpsterloot),
    }



    local accounts = json.decode(Config.Accounts)
    server.accounts = table.create(0, #accounts)

    for i = 1, #accounts do
        server.accounts[accounts[i]] = 0
    end
else
    PlayerData = {}
    client = {
        autoreload = Config.Autoreload or 1,
        screenblur = Config.Screenblur or 1,
        keys = json.decode(Config.Keybinds),
        enablekeys = json.decode(Config.EnableKeys),
        aimedfiring = Config.Aimedfiring,
        giveplayerlist = Config.Playerlist or 1,
        weaponanims = Config.Weaponanim or 1,
        itemnotify = Config.Itemnotify or 1,
        imagepath = Config.Itempath,
        dropprops = Config.PropDrop or 1,
        dropmodel = joaat(Config.DropModel),
        weaponmismatch = Config.Weaponmismatch or 1,
        ignoreweapons = json.decode(Config.IgnoreWeapons),
        suppresspickups = Config.Supresspickup or 1,
    }

    local ignoreweapons = table.create(0, (client.ignoreweapons and #client.ignoreweapons or 0) + 3)

    for i = 1, #client.ignoreweapons do
        local weapon = client.ignoreweapons[i]
        ignoreweapons[tonumber(weapon) or joaat(weapon)] = true
    end

    ignoreweapons[`WEAPON_UNARMED`] = true
    ignoreweapons[`WEAPON_HANDCUFFS`] = true
    ignoreweapons[`WEAPON_GARBAGEBAG`] = true
    ignoreweapons[`OBJECT`] = true
    ignoreweapons[`WEAPON_HOSE`] = true

    client.ignoreweapons = ignoreweapons
end

function shared.print(...) print(string.strjoin(' ', ...)) end

function shared.info(...) shared.print('^2[info]^7', ...) end

---Throws a formatted type error.
---```lua
---error("expected %s to have type '%s' (received %s)")
---```
---@param variable string
---@param expected string
---@param received string
function TypeError(variable, expected, received)
    error(("expected %s to have type '%s' (received %s)"):format(variable, expected, received))
end

-- People like ignoring errors for some reason
local function spamError(err)
    shared.ready = false

    CreateThread(function()
        while true do
            Wait(10000)
            CreateThread(function()
                error(err, 0)
            end)
        end
    end)

    addDeferral(err)
    error(err, 0)
end

---@param name string
---@return table
---@deprecated
function data(name)
    if shared.server and shared.ready == nil then return {} end
    local file = ('data/%s.lua'):format(name)
    local datafile = LoadResourceFile(shared.resource, file)
    local path = ('@@%s/%s'):format(shared.resource, file)

    if not datafile then
        warn(('no datafile found at path %s'):format(path:gsub('@@', '')))
        return {}
    end

    local func, err = load(datafile, path)

    if not func or err then
        shared.ready = false
        ---@diagnostic disable-next-line: return-type-mismatch
        return spamError(err)
    end

    return func()
end

if not lib then
    return spamError('ox_inventory requires the ox_lib resource, refer to the documentation.')
end

local success, msg = lib.checkDependency('oxmysql', '2.7.3')

if success then
    success, msg = lib.checkDependency('ox_lib', '3.13.0')
end

if not success then
    return spamError(msg)
end

if not LoadResourceFile(shared.resource, 'web/build/index.html') then
    return spamError(
        'UI has not been built, refer to the documentation or download a release build.\n	^3https://overextended.dev/ox_inventory^0')
end

-- No we're not going to support qtarget any longer.
if shared.target and GetResourceState('ox_target') ~= 'started' then
    shared.target = false
    warn('ox_target is not loaded - it should start before ox_inventory')
end

if lib.context == 'server' then
    shared.ready = false
    return require 'server'
end

require 'client'
