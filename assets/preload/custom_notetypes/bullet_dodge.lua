function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'bullet_dodge' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'bullet_dodge'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == "bullet_dodge" then
		setProperty('health', -500);
        	playSound(gun, 1)
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)

    if noteType == 'bullet_dodge' then

        triggerEvent('Play Animation','dodge', '1')
        triggerEvent('Play Animation','shoot', '0')
        playSound('gun', 1)

    end

end