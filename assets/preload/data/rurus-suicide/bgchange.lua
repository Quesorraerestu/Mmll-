local duration = 3
local function flash()
    makeLuaSprite("flash", nil, 0, 0)
    makeGraphic("flash", screenWidth * 2, screenHeight * 2, "ffffff")
    setProperty("flash.alpha", 1)
    setObjectCamera("flash", "other")
    addLuaSprite("flash", true)

    doTweenAlpha("flash", "flash", 0, duration, "linear")
end

function onStepHit()
    local step = curStep

    if step == 2527 then
        flash()
        makeLuaSprite("8", "sky", -260, -190)
        setObjectCamera("8", "game")
scaleObject("8", 3, 3)
        addLuaSprite("8", false)  

        makeAnimatedLuaSprite("6", "buildings", 0, -900)
	addAnimationByPrefix("6", "buildings", "falling instance 1", 18, true)
        setObjectCamera("6", "game")
        addLuaSprite("6", false)
	objectPlayAnimation("6", "buildings", true)

    elseif step == 3072 then
	removeLuaSprite("6", true)
        makeLuaSprite("still", "building", 0, -580)
	setObjectCamera('still', 'game')
	addLuaSprite('still', false)

	doTweenY('deadnigga', 'dad', 2000, 0.6, 'linear')

    elseif step == 639 then
        flash()
        makeLuaSprite("2", "rorobag", -800, 0)
        setObjectCamera("2", "game")
        addLuaSprite("2", false)
scaleObject("2", 2, 2)
    elseif step == 1151 then
        flash()
        removeLuaSprite("2", true)

    elseif step == 1663 then
        flash()
        makeLuaSprite("1", "roro", -800, 
70)
        setObjectCamera("1", "game")
        addLuaSprite("1", false)
scaleObject("1", 3, 3)
    elseif step == 2175 then
        flash()
        removeLuaSprite("1", true)
        makeLuaSprite("3", "balcony", -820, 150)
        setObjectCamera("3", "game")
        addLuaSprite("3", false)
scaleObject("3", 3, 3)
    end
end
