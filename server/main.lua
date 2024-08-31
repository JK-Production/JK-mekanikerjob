ESX = exports["es_extended"]:getSharedObject()

local remoteObject = CreateRemoteObject('ro')

TriggerEvent('esx_phone:registerNumber', 'lsc', 'Los Santos Customs', true, true)
TriggerEvent('esx_society:registerSociety', 'lsc', 'lsc', 'society_lsc', 'society_lsc', 'society_lsc', {type = 'private'})

TriggerEvent('esx_phone:registerNumber', 'mecano', 'Auto Exotic', true, true)
TriggerEvent('esx_society:registerSociety', 'mecano', 'mecano', 'society_mecano', 'society_mecano', 'society_mecano', {type = 'private'})

function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end

remoteObject.getPlayersData = function(source, client)
	local _source = source
    local _sourceName = getIdentity(_source)
    local _clientName = getIdentity(client)
    local _sourcefal = _sourceName.firstname .. " " .. _sourceName.lastname
    local _clientfal = _clientName.firstname .. " " .. _clientName.lastname
    data = {
        mechanic = _sourcefal,
        client = _clientfal,
        clientId = client,
    }

	return data
end