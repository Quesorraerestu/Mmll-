function onCreate()

	makeLuaSprite('house', 'r9k', -600, -200);
	addLuaSprite('house',false)
scaleObject('house', 2, 2);
        setLuaSpriteScrollFactor('house', 1, 1);

makeLuaSprite('Start', 'negro', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 5, 'quintOut');
 
end