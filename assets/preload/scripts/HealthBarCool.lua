-- Script by AquaStrikr (https://twitter.com/AquaStrikr_)
function onCreatePost()
	makeLuaSprite('Health', 'bloodbar')
	setObjectCamera('Health', 'hud')
	addLuaSprite('Health', true)
	setObjectOrder('Health', getObjectOrder('healthBar') + 1)
	setProperty('healthBar.visible', true)


end

function onUpdatePost(elapsed)
	setProperty('Health.x', getProperty('healthBar.x') - 0)
	setProperty('Health.y', getProperty('healthBar.y') - 0)


end


