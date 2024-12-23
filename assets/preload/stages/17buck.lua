function onCreate()

makeLuaSprite('house', 'flash', -750, -250);
	addLuaSprite('house',false)
scaleObject('house', 3, 3);
        setLuaSpriteScrollFactor('house', 1, 1);

makeLuaSprite('Start', 'negro', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 5, 'quintOut');
 
end
