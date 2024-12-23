function onCreate()

	makeLuaSprite('house', 'floor', -550, -250);
	addLuaSprite('house',false)
scaleObject('house', 2, 2);
        setLuaSpriteScrollFactor('house', 1, 1);

makeLuaSprite('black', 'black', -550, -250);
	addLuaSprite('black',false)
scaleObject('black', 2, 2);
        setLuaSpriteScrollFactor('black', 1, 1);

makeLuaSprite('trees', 'hanging', -550, -250);
	addLuaSprite('trees',true)
        setLuaSpriteScrollFactor('trees', 1, 1);

       

makeLuaSprite('Start', 'negro', 0, 0);
		scaleObject('Start', 1.0, 1.0);
		setObjectCamera('Start', 'other');
		addLuaSprite('Start', true);

end

function onSongStart()
	doTweenAlpha('graphicAlpha', 'Start', 0, 5, 'quintOut');
 
end