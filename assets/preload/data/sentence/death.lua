function onCreate()
setPropertyFromClass('GameOverSubstate', 'characterName', 'judgebf-dead'); --Character json file for the death animation
setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'sentence/gameOver_brenton'); --put in mods/music/
setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end