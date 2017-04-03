; ----------------------------------
; InContact Status Changer V 1.1
; by Trenton Seagoe
; 
; All shortcuts are prefaced with 
; ALT+<status hotkey>
; 
; Status Hotkeys
; 01) a = Available
; 02) q = Unavailable
; 03) c = Working Chat
; 04) u = Working Unassigned
; 05) b = Break
; 06) l = Lunch
; 07) m = Meeting
; 08) t = Training
; 09) w = Working Task
; 10) o = Working Outage
; ----------------------------------

; ==================================
; Hotkeys
; ==================================

; ----------------------------------
; Set status to Available
; ----------------------------------
!a::
Gosub ActivateIC
Click 115, 90
return

; ----------------------------------
; Set status to Unavailable
; ----------------------------------
!q::
Gosub ActivateIC
Click 115, 115
return

; ----------------------------------
; Set status to Working Chat
; ----------------------------------
!c::
Gosub ActivateIC
Click 115, 140
return

; ----------------------------------
; Set status to Working Unassigned
; ----------------------------------
!u::
Gosub ActivateIC
Click 115, 165
return

; ----------------------------------
; Set status to Break
; ----------------------------------
!b::
Gosub ActivateIC
Click 115, 190
return

; ----------------------------------
; Set status to Lunch*
; ----------------------------------
!l::
Gosub ActivateIC
Gosub DDown
Gosub Other
return

; ----------------------------------
; Set status to Meeting
; ----------------------------------
!m::
Gosub ActivateIC
Gosub DDown
Gosub DDown
Gosub Other
return

; ----------------------------------
; Set status to Training
; ----------------------------------
!t::
Gosub ActivateIC
Gosub DDown
Gosub DDown
Gosub DDown
Gosub Other
return

; ----------------------------------
; Set status to Working Task
; ----------------------------------
!w::
Gosub ActivateIC
Gosub DDown
Gosub DDown
Gosub DDown
Gosub DDown
Gosub Other
return

; ----------------------------------
; Set status to Working Outage
; ----------------------------------
!o::
Gosub ActivateIC
Gosub DDown
Gosub DDown
Gosub DDown
Gosub DDown
Gosub DDown
Gosub Other
return

; ==================================
; Functions
; ==================================

; ----------------------------------
; Locates InContact Window
; ----------------------------------
ActivateIC:
{
	SetTitleMatchMode RegEx
	CoordMode, Mouse [Relative]
	IfWinExist, Ahk_Class HwndWrapper\[PowerAgentNet.exe;;[\-\w]*\]
	{
		WinActivate ; Activates windows
		Click 50, 75 ; Clicks dropdown for status
	}
	Else
		MsgBox, Unable to find InContact, is it running?
	return
}
return

; ----------------------------------
; Clicks the down arrow
; ----------------------------------
DDown: ; Clicks down arrow when status box is open
	{
		Click 190, 190 ; Clicks down arrow
	}
return

; ----------------------------------
; Clicks the last option available
; ----------------------------------
Other: ; Click Training/Task/Outage 
	{
		Click 115, 190
	}
return
; ==================================
; End of Script
; ==================================