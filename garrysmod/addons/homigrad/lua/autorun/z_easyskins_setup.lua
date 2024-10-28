-- [[ CREATED BY ZOMBIE EXTINGUISHER ]]

local function findFiles(searchQuota,searchPath,foundTbl)
	
	foundTbl = foundTbl or {}
	searchPath = searchPath or "z_easyskins"
	
	local files, dirs = file.Find( searchPath.."/*", "LUA" )
	
	for i=1,#dirs do
		findFiles(searchQuota,searchPath..'/'..dirs[i],foundTbl)
	end
	
	for i=1,#files do
		
		local f = files[i]
		
		for ii=1,#searchQuota do
			
			local quota = searchQuota[ii]
			
			if string.StartWith( f, quota ) then
				table.insert(foundTbl,searchPath..'/'..f)
				break
			end
		
		end
		
	end
	
	return foundTbl
	
end

local searchQuota = {}
searchQuota.settings = {"settings"}
searchQuota.cl = {"sh_","cl_","p_"}
searchQuota.sv = {"sh_","sv_"}

local settingFile = findFiles(searchQuota.settings)[1]
local clFiles = findFiles(searchQuota.cl)
local svFiles = findFiles(searchQuota.sv)
local shopSystems = findFiles({""},"z_easyskins/shopsystems")

SH_EASYSKINS = {}

-- load settings file first
include( settingFile )

if CLIENT then

	CL_EASYSKINS = {}

	for _,clFile in pairs( clFiles ) do
		include( clFile )
	end

end

if SERVER then 

	-- easy skins content for clients
	resource.AddWorkshop(2241903438)
	
	AddCSLuaFile( settingFile )
	
	for _,clFile in pairs( clFiles ) do
		AddCSLuaFile( clFile )
	end
	
	for _,shopSystem in pairs( shopSystems ) do
		AddCSLuaFile( shopSystem )
	end
	
	SV_EASYSKINS = {}
	
	for _,svFile in pairs( svFiles ) do 
		include( svFile )
	end
	
end