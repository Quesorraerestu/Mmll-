local credit = "FALLEN-CASINGS"
local duration = 2
local delay = 0

--

function onSongStart()
	makeLuaSprite("credit", "credits/"..credit, 0,250)
	setProperty("credit.x", -getProperty("credit.width"))
	setObjectCamera("credit", "hud")
	addLuaSprite("credit")

    runTimer("delay", delay)
end

function onTweenCompleted(tag)
    if tag == "credit" then
        runTimer("credit", 2.5)
    end
end

function onTimerCompleted(tag)
    if tag == "delay" then

        doTweenX("credit", "credit", 0, duration, "quadinout")
    elseif tag == "credit" then
        doTweenX("credit", "credit", -getProperty("credit.width"), duration, "quadinout")
    end
end

function onCreatePost()
	makeLuaText("nigger", "FALLING CREEPERS :", 600, 760, 20)
	addLuaText("nigger")
	setTextSize("nigger", 25)
	setTextAlignment("nigger", 'left')
	makeLuaText("art", "ART BY SKUMZ AND TOADR", 600, 1050, 10)
	addLuaText("art")
	setTextSize("art", 15)
	setTextAlignment("art", 'left')
	makeLuaText("song", "SONG BY SEAL", 600, 1050, 25)
	addLuaText("song")
	setTextSize("song", 15)
	setTextAlignment("song", 'left')
	makeLuaText("chart", "CHART BY SKUMZ", 600, 1050, 40)
	addLuaText("chart")
	setTextSize("chart", 15)
	setTextAlignment("chart", 'left')
end

--toads big