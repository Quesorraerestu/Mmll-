local duration = 2
local function flash()
    makeLuaSprite("flash", nil, -500, -40)
    makeGraphic("flash", screenWidth * 2, screenHeight * 2, "ffffff")
    setProperty("flash.alpha", 1)
    setObjectCamera("flash", "game")
    addLuaSprite("flash", true)

    doTweenAlpha("flash", "flash", 0, duration, "linear")

    makeLuaSprite("white", nil, -500, -40)
    makeGraphic("white", screenWidth * 2, screenHeight * 2, "ffffff")
    setProperty("white.alpha", 0)
    setObjectCamera("white", "game")
    addLuaSprite("white", true)
end

function onCreatePost()
    makeLuaSprite('black', 'black', -500, 0)
    setObjectCamera('black', 'game')
    addLuaSprite('black', true)
end

function onStepHit()
    local step = curStep
        if step == 256 then
		flash()
		setProperty('black.alpha', 0)

	else if step == 1024 then
		setProperty('black.alpha', 1)

	else if step == 1152 then
		flash()
		setProperty('black.alpha', 0)

	else if step == 1408 then
		setProperty('white.alpha', 1)
        end
      end
    end
  end
end