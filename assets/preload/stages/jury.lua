function onCreate()

	makeLuaSprite('house', 'background', -700, -180);
	addLuaSprite('house',false)
scaleObject('house', 1, 1);
        setLuaSpriteScrollFactor('house', 1, 1);

makeLuaSprite('Start', 'negro', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 5, 'quintOut');
 
end