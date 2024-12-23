function onCreatePost()
    makeAnimatedLuaSprite("1", "crowd", -500, 600)
    addLuaSprite("1", true)
    addAnimationByPrefix("1", "idle", "idle", 24, true)
	scaleObject("1", 2, 2)
    objectPlayAnimation("1", "idle", false)
end