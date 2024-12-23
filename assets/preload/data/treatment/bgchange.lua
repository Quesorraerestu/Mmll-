local duration = 1
local function flash()
    makeLuaSprite("flash", nil, 0, 0)
    makeGraphic("flash", screenWidth * 2, screenHeight * 2, "ffffff")
    setProperty("flash.alpha", 1)
    setObjectCamera("flash", "game")
    addLuaSprite("flash", true)

    doTweenAlpha("flash", "flash", 0, duration, "linear")
end

local X = 10
local Y = 30

function onStepHit()
    local step = curStep

    if step == 1008 then
        flash()
        makeLuaSprite("1", "oldmcnutt", -400, 0)
        setObjectCamera("1", "game")

    elseif step == 1024 then
        flash()
        removeLuaSprite("1", true)

    elseif step == 3039 then
        makeLuaSprite('acsmanisblack', 'blood', 0, 0)
        setObjectCamera('acsmanisblack', 'hud')
        setGraphicSize("acsmanisblack", screenWidth, screenHeight)
        updateHitbox("acsmanisblack") 
	setProperty("acsmanisblack.alpha", 1)
	addLuaSprite('acsmanisblack', true)
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	local value = getProperty(tag)
	setProperty(tag, value - 0.01)
end
