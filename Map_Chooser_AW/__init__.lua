game:executecommand("say AW Simple Zombie Map Chooser Created By Soliderror")


local onPlayerSay = function (player, msg)
    msg = string.lower(msg);

    if msg == "!rs" or msg == "!r" then
		game:executecommand("fast_restart")
    end
	
	if msg == "!outbreak" or msg == "!out" then
		game:executecommand("map mp_zombie_lab")
    end
	
	if msg == "!infection" or msg == "!infect" then
		game:executecommand("map mp_zombie_brg")
    end
	
	if msg == "!carrier" or msg == "!car" then
		game:executecommand("map mp_zombie_ark")
    end
	
	if msg == "!descent" or msg == "!des" then
		game:executecommand("map mp_zombie_h20")
    end

	
end

local onPlayerConnected = function (player)
	local saylistener = player:onnotify("say", function(msg) onPlayerSay(player, msg) end);
        
end


level:onnotify("connected", onPlayerConnected);
