function onCreatePost()
	makeAnimatedLuaSprite("vhs", "Effects", -500, 0)
	luaSpriteAddAnimationByPrefix("vhs", "vhs", "idle", 24, true)
	luaSpritePlayAnimation("vhs", "vhs", false)
	addLuaSprite("vhs", true)
	scaleObject("vhs", 2.5, 2.5)
	setProperty("vhs.alpha", 1.5, 1.5)
end