function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'cancerWars/gameOver_cancerWars'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'cancerWars/gameOverEnd_cancerWars'); --put in mods/music/
end