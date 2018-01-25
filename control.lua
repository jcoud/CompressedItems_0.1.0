--[[script.on_event(defines.events.on_tick, function(event)
	for _, player in pairs(game.players) do
		if player.get_inventory(defines.inventory.player_quickbar) or player.get_inventory(defines.inventory.player_main) then
			if player.get_item_count("iron-plate") % 100 == 0 then
				player.force.recipes["ci-iron-plate"].enabled = true
			else
				player.force.recipes["ci-iron-plate"].enabled = false
			end
		end
	end
end)]]
