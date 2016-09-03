#include "position.au3"
#include <Date.au3>
#include <MsgBoxConstants.au3>

Local $i = 0

while $i = 0
HotKeySet("{ESC}", "_Exit") ;If you press ESC the script will stop
HotKeySet("{F1}", "HotKey_F1") ;;故事_重複
HotKeySet("{F2}", "HotKey_F2") ;;故事_一直往下一關
HotKeySet("{F3}", "HotKey_F3") ;;魔王之塔
HotKeySet("{F4}", "HotKey_F4") ;;競技場
HotKeySet("{F5}", "HotKey_F5") ;;次元之門
HotKeySet("{F6}", "HotKey_F6") ;;掃蕩
HotKeySet("{F7}", "HotKey_F7") ;;短暫活動
HotKeySet("{F8}", "HotKey_F8") ;;加好友
WEnd

Func _Exit()
$i = 1
Exit
EndFunc ;==> _Exit()

Func HotKey_F1()
;;故事_重複
Local $j = 0
$j = $j -70
	while $j < 20
		;;選再來一次的地方
		MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
		send("{r}")
		sleep(5000)
		send("{e}")
		sleep(1000)
		send("{o}")
		sleep(1000)
		send("{space}")
		sleep(9000)
		;;尋寶人
		;;send("{k}")
		sleep(10000)
		;;尋寶人
		;;send("{k}")
		sleep(20000)
		MouseMove(300, 200, 1)
		sleep(25000)
		MouseMove(500, 200, 1)
		sleep(25000)
		;;選最左邊的牌
		send("{1}")

		MouseMove(700, 200, 1)
		sleep(20000)
		;;選中間的牌
		send("{2}")
		sleep(1000)
		send("{space}")
		sleep(20000)
		MouseMove(900, 200, 1)
		sleep(30000)
			while $j = 17
				sleep(300000)
				$j = 0
			WEnd
		send("{c}")
		$j = $j +1
	WEnd
send("{esc}")
EndFunc

Func HotKey_F2()
;;故事_一直往下一關
	Local $c = 0
	while $c < 320
		MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
		sleep(2000)
		send("{n}")
		sleep(4000)
		send("{o}")
		sleep(1000)
		send("{e}")
		sleep(1000)
		send("{space}")
		send("{space}")
		send("{space}")
		sleep(2000)
		local $kk = 0
		while $kk < 5
			send("{v}")
			sleep(2000)
			send("{b}")
			sleep(2000)
			send("{j}")
			sleep(2000)
			send("{space}")
				local $xx = $kk * 100
				MouseMove(300, $xx , 1)
			sleep(2000)
			$kk = $kk + 1
		WEnd
		sleep(30000)
		$c = $c +1
	WEnd
	send("{esc}")
EndFunc

Func HotKey_F3()
;;魔王之塔
	Local $l = 0
	while $l < 10
		MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
		sleep(2000)
		send("{space}")
		sleep(75000)
		MouseMove(700, 200, 1)
		send("{o}")
		sleep(2000)
		send("{y}")
		sleep(2000)
		send("{o}")
		sleep(4000)
		send("{e}")
		$l = $l +1
	WEnd
	send("{esc}")
EndFunc
Func HotKey_F4()
;;競技場
	Local $l = 0
	while $l < 15
		send("{f}")
		sleep(2000)
		send("{s}")
		sleep(45000)
		send("{0}")
		sleep(6000)
		$l = $l +1
	WEnd
	send("{esc}")
EndFunc

Func HotKey_F5()
;;次元之門
	Local $h = 0
	while $h < 8
		send("{r}")
		sleep(6000)
		send("{space}")
		sleep(50000)
		MsgBox($MB_SYSTEMMODAL, "Title", "test", 1)
		send("{2}")
		sleep(20000)
		$h = $h +1
	WEnd
	send("{esc}")
EndFunc

Func HotKey_F6()
;;掃蕩
	Local $h = 0
	while $h < 50
		send("{p}")
		sleep(5800)
		$h = $h +1
	WEnd
	send("{esc}")
EndFunc

Func HotKey_F7()
;;短暫活動
	Local $h = 0
	while $h < 50
		send("{o}")
		sleep(600)
		send("{3}")
		sleep(600)
		send("{3}")
		sleep(600)
		$h = $h +1
	WEnd
	send("{esc}")
EndFunc

Func HotKey_F8()
;;加好友
	Local $h = 0
	while $h < 50
		sleep(1000)
		send("!{tab}")
		sleep(1000)
		send("^{c}")
		sleep(1000)
		send("{down}")
		sleep(1000)
		send("!{tab}")
		sleep(1000)
		send("{7}")
		sleep(1000)
		send("^{v}")
		sleep(1000)
		send("{tab}")
		sleep(2000)
		send("{enter}")
		sleep(4000)
		send("{i}")
		sleep(1000)
		send("{y}")
		sleep(2000)
		send("{e")
		sleep(1000)
		$h = $h +1
	WEnd
	send("{esc}")
EndFunc