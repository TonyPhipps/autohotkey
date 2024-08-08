MyWindow := "Fortnite"								; Which window title to watch for
SetKeyDelay 25, 25									; ms between keys, ms between down/up

F12::												; F12 to start
    Gosub, AFK_Bot									; Run once on start
	SetTimer, AFK_Bot, 500							; every half-second, execute function if it isn't still running
Return

^P::Pause											; To pause

AFK_Bot:
	WinWaitActive, %MyWindow%,						; Only send batch of keys when window is active
	Send, {Left down}
	Send, {Left up}
	Sleep, %r%
	Send, {Right down}
	Send, {Right up}
	Sleep, %r%
	MouseClick, left
	Random, r, 300, 2000							; set r to random value
	Sleep, %r%										; wait r milliseconds
Return