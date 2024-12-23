function onStepHit()
    local step = curStep

    if step == 2048 then
	doTweenX("stepback", "boyfriend", 950, 1, "sineInOut")
   end
end