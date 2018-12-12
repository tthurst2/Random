#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
/*
bottom three of right most column
2512, 964 = TOP INV SLOT
2502, 1024 = MID INV SLOT
2501, 1096 = BOT INV SLOT
-----
2075, 336 = TOP LEFT chest slot
2151, 333 = TOP RIGHT chest slot
2150, 407 = MIDDLE RIGHT chest slot
2080, 406 = MIDDLE LEFT chest slot
2082, 475 = BOTTOM LEFT chest slot
2153, 480 = BOTTOM RIGHT chest slot
*/


NumpadMult::
swap:
BlockInput, On
BlockInput, MouseMove
Click, Up
Sleep, 50
WinActivate, Path of Exile ahk_class POEWindowClass
Sleep, 70
Send {`` down}
Send {`` up}
Sleep, 60
;random spot
Click, 2489, 650 Left, Down
Sleep, 68
Click, 2489, 650 Left, Up
Sleep, 69
;top-right chest
Click, 2151, 333 Right, Down
Sleep, 64
Click, 2151, 333 Right, Up
Sleep, 68
;top inv slot
Click, 2489, 950 Left, Down
Sleep, 68
Click, 2489, 950 Left, Up
Sleep, 69
;top-right chest
Click, 2151, 333 Left, Down
Sleep, 67
Click, 2151, 333 Left, Up
Sleep, 65
;mid-right chest
Click, 2150, 407 Right, Down
Sleep, 64
Click, 2150, 407 Right, Up
Sleep, 59
;mid-inv slot
Click, 2489, 1022 Left, Down
Sleep, 58
Click, 2489, 1022 Left, Up
Sleep, 56
;mid-right chest
Click, 2150, 407 Left, Down
Sleep, 54
Click, 2150, 407 Left, Up
Sleep, 56
;bot-right chest
Click, 2153, 480 Right, Down
Sleep, 58
Click, 2153, 480 Right, Up
Sleep, 56
;bot inv slot
Click, 2498, 1092 Left, Down
Sleep, 54
Click, 2498, 1092 Left, Up
Sleep, 68
;bot-right chest
Click, 2153, 480 Left, Down
Sleep, 64
Click, 2153, 480 Left, Up
Sleep, 55
Send {`` down}
Send {`` up}
Blockinput, Off
BlockInput, MouseMoveOff
Return

