#include "position.au3"
#include <Date.au3>
#include <MsgBoxConstants.au3>

Local $i = 0

while $i = 0
HotKeySet("{ESC}", "_Exit") ;If you press ESC the script will stop
HotKeySet("{F1}", "HotKey_F1") ;;
HotKeySet("{F2}", "HotKey_F2") 
HotKeySet("{F3}", "HotKey_F3") 
HotKeySet("{F4}", "HotKey_F4") 
HotKeySet("{F5}", "HotKey_F5") 
HotKeySet("{F6}", "HotKey_F6") 
HotKeySet("{F7}", "HotKey_F7") 
HotKeySet("{F8}", "HotKey_F8") 
WEnd

Func _Exit()
$i = 1
Exit
EndFunc ;==> _Exit() 

Func HotKey_F1()
;;
Local $j = 0
$j = $j -70
	while $j < 20
		;;?I??BS????
		MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
		
		$j = $j +1  
	WEnd
_Exit()
EndFunc

Func HotKey_F2()
;;
	Local $c = 0
	while $c < 320
		
		$c = $c +1  
	WEnd
	_Exit()
EndFunc

Func HotKey_F3()
;;
	Local $l = 0
	while $l < 10
		
		$l = $l +1  
	WEnd
	_Exit()
EndFunc
Func HotKey_F4()
;;
	Local $l = 0
	while $l < 15
		
		$l = $l +1  
	WEnd
	_Exit()
EndFunc

Func HotKey_F5()
;;
	Local $h = 0
	while $h < 8
		
		$h = $h +1  
	WEnd
	_Exit()
EndFunc

Func HotKey_F6()
;;
	Local $h = 0
	while $h < 50
		
		$h = $h +1  
	WEnd
	_Exit()
EndFunc

Func HotKey_F7()
;;
	Local $h = 0
	while $h < 50
		
		$h = $h +1  
	WEnd
	_Exit()
EndFunc

Func HotKey_F8()
;;
	Local $h = 0
	while $h < 50
		
		$h = $h +1  
	WEnd
	_Exit()
EndFunc