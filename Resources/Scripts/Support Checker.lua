--// Variables

local Title = "Matrix check"
local StarterGui = game:GetService("StarterGui")

--// Functions

local function SendNotification(TitleArg, DescriptionArg, DurationArg)
    StarterGui:SetCore("SendNotification", {
        Title = TitleArg,
        Text = DescriptionArg,
        Duration = DurationArg
    })
end

--// Main

if not writefile then SendNotification(check, "Your exploit does not support writefile()", 3) return end
if not isfile then SendNotification(check, "Your exploit does not support isfile()", 3) return end
if not delfile then SendNotification(check, "Your exploit does not support delfile()", 3) return end
if not makefolder then SendNotification(check, "Your exploit does not support makefolder()", 3) return end
if not isfolder then SendNotification(check, "Your exploit does not support isfolder()", 3) return end
if not delfolder then SendNotification(check, "Your exploit does not support delfolder()", 3) return end
if not syn then SendNotification(check, "Your exploit does not support the library syn", 3) return end
if not syn.queue_on_teleport then SendNotification(check, "Your exploit does not support syn.queue_on_teleport()", 3) return end
if not Drawing then SendNotification(check, "Your exploit does not support the library Drawing", 3) return end
if not getgenv then SendNotification(check, "Your exploit does not support getgenv()", 3) return end

SendNotification(check, "Your exploit supports this script.", 3)
