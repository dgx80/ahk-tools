#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Recommended for catching common errors.
global nEffectSoundCounter := 0

return

soundEffect_decEffectCounter:
	
	if nEffectSoundCounter > 0
	{
		nEffectSoundCounter := nEffectSoundCounter -1
	}
	
	if nEffectSoundCounter = 0
	{
		SetTimer, soundEffect_decEffectCounter, off
	}
	;popup(nEffectSoundCounter)
RETURN

popup(tx)
{
	SplashTextOn, , , %tx%
	sleep,500
	SplashTextOff
}

soundEffect_pulse()
{
	return
	;SoundPlay, *-1
	;SoundPlay, %A_WinDir%\Media\ding.wav
	SoundSetWaveVolume,20
	nEffectSoundCounter := nEffectSoundCounter +1
	if nEffectSoundCounter = 1
	{
		soundEffect_startEffectTimer()
		SoundPlay, %A_ScriptDir%\..\media\punch.wav, 1
	}
	else if nEffectSoundCounter = 2
	{
        soundEffect_resetTimer()
		SoundPlay, %A_ScriptDir%\..\media\Excellent.wav, 1
	}
	else if nEffectSoundCounter > 2
	{
        soundEffect_resetTimer()
		SoundPlay, %A_ScriptDir%\..\media\Hahahaaa.wav, 1
	}
    SoundSetWaveVolume,100
}

soundEffect_startEffectTimer()
{
	SetTimer, soundEffect_decEffectCounter, 3000
}
soundEffect_resetTimer()
{
    SetTimer, soundEffect_decEffectCounter, off
    soundEffect_startEffectTimer()
}