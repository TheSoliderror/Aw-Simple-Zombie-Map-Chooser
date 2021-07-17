game:executecommand("say AW Simple Zombie Map Chooser Created By Soliderror")

level:onnotify("say", function(player, message)
    local msg = string.lower(message)
		
    if msg == "!fr" or msg == "!rs" then
    	game:executecommand("fast_restart")
    	return
    end
		
    local args = {}
    for arg in string.gmatch(msg, "[^%s]+") do
    	table.insert(args, arg)
    end

    if args[1] ~= "!map" then
        return
    end
		
    if args[2] == "outbreak" then
        game:executecommand("map mp_zombie_lab")
    elseif args[2] == "infection" then
        game:executecommand("map mp_zombie_brg")
    elseif args[2] == "carrier" then
        game:executecommand("map mp_zombie_ark")
    elseif args[2] == "descent" then
        game:executecommand("map mp_zombie_h2o")
    else
        game:executecommand("say The requested map was not found.")
    end
end);
