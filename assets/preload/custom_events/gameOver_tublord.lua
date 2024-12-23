function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'judgebf-dead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'tublordChallenge/gameOver_tublord'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'tublordChallenge/gameOverEnd_tublord'); --put in mods/music/
end