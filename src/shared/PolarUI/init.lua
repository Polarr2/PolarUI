local log = require(script.log)

local polar = {}

function polar.loadmod(name)
    for i,v in pairs(script.modules:GetChildren()) do
        if v.Name == name and v.ClassName == "ModuleScript" then
            log.print("using module "..name)
            return require(v)
        end

        if v.Name == name and v.ClassName == "Folder" then
            for i,v in pairs(v:GetChildren()) do
                if v.ClassName == "ModuleScript" then
                    log.print("using folder"..name)
                    return require(v)
                end
            end
        end
    end
end

log.print("loaded polar")
return polar