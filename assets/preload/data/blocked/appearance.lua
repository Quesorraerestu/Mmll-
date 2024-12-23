local y = "elasticInOut"
local alpha = "smootherStepIn"

function onCreatePost()
    local bps = bpm / 60
    local hit = 1 / bps

    runHaxeCode([[
        var strums = PlayState.instance.playerStrums;
        
        for (strum in strums.members) {
            strum.y += 25;
            strum.alpha = 0;
        }
    ]])
    
    for i = 1, 4 do
        runTimer(i - 1, hit * i)
    end
end

function onTimerCompleted(tag)
    if tag == "0" then
        noteTweenY("0Y", 4, defaultPlayerStrumY0, 0.75, y)
        noteTweenAlpha("0A", 4, 1, 0.675, alpha)
    end

    if tag == "1" then
        noteTweenY("1Y", 5, defaultPlayerStrumY1, 0.75, y)
        noteTweenAlpha("1A", 5, 1, 0.675, alpha)
    end

    if tag == "2" then
        noteTweenY("2Y", 6, defaultPlayerStrumY2, 0.75, y)
        noteTweenAlpha("2A", 6, 1, 0.675, alpha)
    end

    if tag == "3" then
        noteTweenY("3Y", 7, defaultPlayerStrumY3, 0.75, y)
        noteTweenAlpha("3A", 7, 1, 0.675, alpha)
    end
end
