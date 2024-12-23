function onCreatePost()
	makeLuaSprite("overlay", "overlays/mark", -150, -10)
	setObjectCamera("overlay", "hud")
	setProperty("overlay.alpha", 0.8)
	scaleObject("overlay", 1.5, 1.3)
	updateHitbox("overlay")
	setBlendMode("overlay", "subtract")
	addLuaSprite("overlay", true)
end