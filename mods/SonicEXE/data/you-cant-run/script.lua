local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('youcantrun');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('tripletrouble')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end