function onCreatePost()
	makeLuaSprite("overlay", "overlays/justice-system", -150, -10)
	setObjectCamera("overlay", "other")
	setProperty("overlay.alpha", 0.8)
	scaleObject("overlay", 1.5, 1.3)
	updateHitbox("overlay")
	setBlendMode("overlay", "subtract")
	addLuaSprite("overlay", true)
end