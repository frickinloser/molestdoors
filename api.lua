local api = {}
local spawnnotifs = {
"Ohhhh my gawdd!!",
"Hide in a closet!",
"Hehehehe.",
"Coming for that ass.",
"OH LAWD HE COMIN!"
}
function api:EntityNotif(entity, imageid)
Rayfield:Notify({
	Title = entity,
	Content = spawnnotifs[math.random(#spawnnotifs)],
	Duration = 5,
	Image = imageid,
	Actions = { -- Notification Buttons
		Ignore = {
			Name = "Oh no",
			Callback = function()
				print("The user is in danger.")
			end
		},
	},
})
end

function api:Print(text)
print(text)
end

function api:EntitySpawned(Entity)
   if Entity == "Rush" then
      api:EntityNotif("Rush", 11253398403)
   elseif Entity == "Ambush" then
      api:EntityNotif("Ambush", 11875331563)
   end
end

return api
