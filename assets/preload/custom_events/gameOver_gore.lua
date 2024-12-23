function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'qonnie-death'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gore/gameOver_gore'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gore/gameOverEnd_gore'); --put in mods/music/
end