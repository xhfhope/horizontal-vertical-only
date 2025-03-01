#Persistent
SetTimer, WatchMouse, 10  ; Runs every 10ms
return

WatchMouse:
    if GetKeyState("Ctrl", "P") && GetKeyState("Alt", "P") {
        MouseGetPos, X, Y
        if (!defined)
        {
            prevY := Y  ; Store initial Y position only once
            defined := true
        }
        MouseMove, X, %prevY%, 0  ; Lock Y movement
    } else {
        defined := false  ; Reset flag when keys are released
    }
return
