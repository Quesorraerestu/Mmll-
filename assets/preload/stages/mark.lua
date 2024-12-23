function onCreate()

makeLuaSprite('house', 'mark/pipe1', -4088, -3806);
	addLuaSprite('house',false)
scaleObject('house', 2.6, 2.6);
        setLuaSpriteScrollFactor('house', 0.4, 0.4);

makeLuaSprite('house1', 'mark/bfspot', 904, 751);
	addLuaSprite('house1',false)
scaleObject('house1', 1, 1);
        setLuaSpriteScrollFactor('house1', 1, 1);

makeLuaSprite('house2', 'mark/gfspot', 61, 458);
	addLuaSprite('house2',false)
scaleObject('house2', 1, 1);
        setLuaSpriteScrollFactor('house2', 1, 1);
       

makeLuaSprite('Start', 'negro', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 5, 'quintOut');
 
end