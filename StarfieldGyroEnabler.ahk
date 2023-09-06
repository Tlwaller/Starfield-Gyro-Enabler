; Launch Starfield **REPLACE WITH YOUR STARFIELD.EXE DIRECTORY**
Run, "path/to/starfield.exe"

; Wait for the game to become active
WinWaitActive, ahk_exe Starfield.exe

; Hold down the "J" key
Send, {j down}

; Keep checking if the game is still active
While WinActive("ahk_exe Starfield.exe")
{
    ; Check if "J" key is still held down
    if not GetKeyState("j", "P")
    {
        ; If "J" key is released, press it down again
        Send, {j down}
    }
    
    ; Sleep for a short time to prevent excessive CPU usage
    Sleep, 1000
}

; Release the "J" key when the game is no longer active
Send, {j up}

; Exit the script when the game is closed
ExitApp
