-- refractionservers.net, Chewgum - chewgumtj@gmail.com --

AddCSLuaFile()

-- MAJOR.MINOR.PATCH

-- MAJOR version when you make incompatible API changes,
-- MINOR version when you add functionality in a backwards-compatible manner, and
-- PATCH version when you make backwards-compatible bug fixes.

ATLASCHAT_VERSION = 239

if (SERVER) then
	AddCSLuaFile("atlaschat/cl_init.lua")
	
	include("atlaschat/init.lua")
else
	include("atlaschat/cl_init.lua")
end

if (atlaschat) then
	local version = ""
	
	string.gsub(tostring(ATLASCHAT_VERSION), "(%d)", function(text) version = version .. text .. "." end)
	
	function atlaschat:GetVersion()
		return version:sub(0, 5)
	end
	
	if (CLIENT) then
		MsgC(color_green, "Atlas chat version " .. atlaschat:GetVersion() .. " has loaded!\n")
	else
		MsgC(color_green, "Atlas chat version " .. atlaschat:GetVersion() .. " has loaded!\n")
	end
else
	MsgC(color_red, "Atlas chat failed to load!\n")
end