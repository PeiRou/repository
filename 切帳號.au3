#include "position.au3"
#include <Date.au3>
#include <MsgBoxConstants.au3>

	;;�b��
	Local $aArrayAc[19] = [ _
	  "pump800511", "pumpk800511", "pum800511" _
	, "pumk800511", "pue800511", "pub800511" _
	, "phephe0513", "phapha0513","s793156529" _
	, "jeica7799", "jeica0909","pug800511" _
	, "puk800511", "puck800511", "pud800511" _
	, "pup800511", "westdoor1234" ,"pun800511" _
	, "green79315" _
	]
	
	;;���ŬO�_��F���
	Local $aArrayLv[19] = [ _
	  1, 1, 1 _
	, 1, 1, 0 _
	, 1, 1, 1 _
	, 1, 1, 1 _
	, 1, 1, 1 _
	, 1, 0, 0 _
	, 1]
	
	;;�O�_ñ�줽�|
	Local $aArrayGuild[19] = [ _
	  1, 1, 1 _
	, 1, 1, 1 _
	, 1, 1, 1 _
	, 1, 1, 1 _
	, 1, 1, 1 _
	, 1, 1, 0 _
	, 0]

Local $i = 0

while $i = 0
HotKeySet("{F1}", "_Exit")
HotKeySet("{F8}", "HotKey_F8")
HotKeySet("{F9}", "HotKey_F9")
HotKeySet("{F10}", "HotKey_F10")
WEnd

Func _Exit()
$i = 1
Exit
EndFunc ;==> _Exit()

Func HotKey_F8()	

	Local $j = 2
	while $j < 19
		control(1,1,$aArrayAc[$j],$aArrayGuild[$j],$aArrayLv[$j]) ;;�`����
		;;control(�O�_�n�n�b��,�b��,�O�_�n�I���|,�O�_�n���)
		$j = $j + 1
	WEnd
	_Exit()
EndFunc

Func HotKey_F9()	
	Local $j = 1
	while $j < 2
		control(0,1,$aArrayAc[$j],$aArrayGuild[$j],$aArrayLv[$j]) ;;�`����
		$j = $j + 1
	WEnd
	_Exit()
EndFunc

Func HotKey_F10()	
	Local $j = 1
	while $j < 2
		control(0,0,0,0,$aArrayLv[$j]) ;;�`����
		$j = $j + 1
	WEnd
	_Exit()
EndFunc

;;�Y���ݭn���Ѽƪ�,1=true,0=false
Func control(ByRef $isLogin,ByRef $isTempActivity,ByRef $acc,ByRef $isGuild,ByRef $isVsTral)
;;�`����
	
	if $isLogin > 0 Then
		changeAccount($acc)
	EndIf
	;;�n�b��	
	
	if $isTempActivity >0 Then
		tempActivity()
	EndIf
	;;�u���Ȯɬ���
	
	if $isGuild > 0 Then
		guild(1,1,0)
		;;guild(1,1,1)
	EndIf	
	;;���|
		;;�Ѽ�1=�q��,
		;;�Ѽ�2=���ñ����y,
		;;�Ѽ�3=�]����
	
	if $isVsTral > 0 Then
		visitTravel()
	EndIf	
	;;�����������I
		
	shop()
	;;�ө�	
	
	exchangeDiamond()
	;;�I���p��
	sendFriend() 
	;;�o�e���B�󵹪B��
	thrownDice()
	;;�ϻ�l
	revMessage() 
	;;����T��
	mission() 
	;;����
	logout() 
	;;�h�X�n��	
EndFunc

Func tempActivity()
;;�u���Ȯɬ���
	MsgBox($MB_SYSTEMMODAL, "Title", "�Ȯɵu������", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(3000)	
	send("{z}")
	sleep(2000)
	send("{6}")
	sleep(2000)
	send("{tab}")
	sleep(1000)
	send("{tab}")
	sleep(1000)
	send("{enter}")
	sleep(1000)
	send("{q}")
	sleep(1000)
	MouseClick($MOUSE_CLICK_LEFT, $xTempAct, $yTempAct, 1)
EndFunc

Func exchangeDiamond()
;;�I���p��
	MsgBox($MB_SYSTEMMODAL, "Title", "�I���p��", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	;;send("{space}")
	sleep(3000)	
	send("{r}")
	sleep(800)
	send("{l}")
	sleep(1500)
	send("{0}")
	sleep(1500)
	send("{e}")
	sleep(1500)
	send("{s}")
	sleep(1500)
	send("{e}")
	sleep(1000)
	send("{esc}")
	sleep(1000)
	send("{esc}")
EndFunc

Func shop()
;;�ө�
	MsgBox($MB_SYSTEMMODAL, "Title", "�ө�", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	;;send("{esc}")	
	sleep(3000)	
	send("{v}")
	sleep(1500)
	send("{k}") ;;�Ȥ��ʶR
	sleep(1800)
	send("{y}") ;;�Ȥ��ʶR���T�w
	sleep(800)
	send("{f}")
	sleep(800)
	send("{y}")
	sleep(1000)
	send("{esc}")
	sleep(1000)
	send("{esc}")
EndFunc

Func visitTravel()
;;�����������I
	MsgBox($MB_SYSTEMMODAL, "Title", "�����������I", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(800)
	send("{r}")
	sleep(800)
	send("{s}")
	sleep(1000)
	vsTraCycle("���W��","{2}") ;;���W��
	vsTraCycle("�k�W��","{3}") ;;�k�W��
	vsTraCycle("���U��","{c}") ;;���U��
	vsTraCycle("�k�U��","{t}") ;;�k�U��
	send("{esc}")
	sleep(1000)
	send("{esc}")
EndFunc

Func vsTraCycle(ByRef $showText,ByRef $posit)
;;���I�@�Ӵ`��
	MsgBox($MB_SYSTEMMODAL, "Title", $showText, 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send($posit)
	sleep(3000)
	send("{o}") ;;���I���y�T�{
	sleep(800)	
	send($posit)
	sleep(800)
	send("{x}")
	sleep(800)
	send("{v}")		
	send("{e}") ;;�S�����P�����I
	sleep(1800)
EndFunc

Func thrownDice()
;;�ϻ�l
	MsgBox($MB_SYSTEMMODAL, "Title", "�ϻ�l", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{r}")
	sleep(800)
	send("{x}")
	sleep(1200)
	send("{t}")
	sleep(8000)
	send("{o}")
	sleep(1000)
	send("{c}")
	sleep(1000)
	send("{esc}")
	sleep(1000)
	send("{esc}")
	sleep(800)
EndFunc

Func logout()
;;�h�X�n��
	sleep(800)
	send("{U}")
	sleep(500)
	send("{x}")
	sleep(20000)
	;;_Exit()
EndFunc

Func changeAccount(ByRef $acc)
;;���b��
	send("{0}")
	sleep(800)
	send("^a")
	sleep(800)
	send($acc)
	sleep(800)
	send("{tab}")
	sleep(800)
	send("^a")
	sleep(800)
	send("+a7789123")
	sleep(800) 
	local $yy = $y +100
	MouseClick($MOUSE_CLICK_LEFT, $x, $yy , 1)
	sleep(800)
	send("{n}")
	sleep(4800)
	send("{space}")
	MsgBox($MB_SYSTEMMODAL, "Title", "�n�J���\", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(18000)
	send("{esc}")
	sleep(8000)
	send("{esc}")
	sleep(1000)
	send("{esc}")
	sleep(1000)
	send("{esc}")
	sleep(1000)
	send("{q}")
EndFunc

Func sendFriend()
;;�o�e���B�󵹪B��
	MsgBox($MB_SYSTEMMODAL, "Title", "�o�e���B�󵹪B��", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{9}")
	sleep(3000)
	send("{0}")
	sleep(5000)
	send("{e}")
	sleep(1000)
	chkFriend()
	send("{esc}")
	sleep(800)
EndFunc

Func chkFriend()
;;�T�{�n��
	MsgBox($MB_SYSTEMMODAL, "Title", "�T�{�n��", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{m}")
	sleep(1000)
	send("{2}")
	sleep(1000)
	send("{y}")
	sleep(1000)
EndFunc

Func revMessage()
;;����T��
	MsgBox($MB_SYSTEMMODAL, "Title", "����T��", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{d}")
	sleep(1500)
	send("{b}")
	sleep(800)
	send("{e}")
	sleep(3800)
	send("{6}")
	sleep(800)
	send("{b}")
	sleep(1800)
	send("{4}")
	sleep(800)
	send("{b}")
	sleep(1800)
	send("{7}")
	sleep(800)
	send("{b}")
	sleep(1800)
	send("{5}")
	sleep(800)
	send("{3}")
	sleep(800)
	send("{v}")
	sleep(800)
	send("{3}")
	sleep(800)
	send("{v}")
	sleep(1300)
	send("{e}")
	sleep(1000)
	send("{esc}")
	sleep(800)
EndFunc

Func mission()
;;����
	MsgBox($MB_SYSTEMMODAL, "Title", "����", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{k}")
	sleep(800)
	send("{b}")
	sleep(800)
	send("{e}")
	sleep(1200)
	send("{4}")
	sleep(800)
	send("{b}")
	sleep(800)
	send("{e}")
	sleep(1200)
	send("{5}")
	sleep(800)
	send("{b}")
	sleep(800)
	send("{e}")
	sleep(1200)
	send("{esc}")
	sleep(800)
EndFunc


Func guild(ByRef $wsh,ByRef $siW,ByRef $devAtk)
;;���|
	MsgBox($MB_SYSTEMMODAL, "Title", "���|", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{g}")
	sleep(2500)
	send("{e}") ;;ñ��T�w	
	if $wsh > 0 Then
		worship() ;;�q��
	EndIf
	if $siW > 0 Then
		signaWard() ;;ñ����y
	EndIf	
	if $devAtk > 0 Then
		devilAttack();;�]���𫰾�
	EndIf		
	sleep(1800)
	send("{esc}")
	sleep(2000)
EndFunc

Func signaWard()
;;ñ����y
	MsgBox($MB_SYSTEMMODAL, "Title", "ñ����y", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{g}") ;;ñ����y
	sleep(1000)
	send("{v}") ;;������y
	sleep(1000)
	send("{e}")
	sleep(1000)
	send("{g}") ;;����ñ����y������
EndFunc

Func worship()
;;�q��
	MsgBox($MB_SYSTEMMODAL, "Title", "�q��", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{k}")	;;�q��
	sleep(1500)	
	send("{3}") ;;�綠�|��
	sleep(800)
	send("{y}")
	sleep(4000)
	send("{d}") ;;�����q��������
EndFunc

Func devilAttack()
;;�]���𫰾�	
	MsgBox($MB_SYSTEMMODAL, "Title", "�]���𫰾�", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{v}")	
	sleep(1000)
	send("{space}")	;;�i�J�]���𫰫��s
	sleep(2000)
	send("{space}")
	MouseMove(100, 100, 1)
	sleep(1000)
	send("{space}") ;;�԰��}�l
	sleep(1000)
	;;send("{e}")	
	sleep(50000)
	MouseMove(200, 200, 1)
	send("{space}")
	sleep(50000)
	MouseMove(300, 300, 1)
	send("{space}")
	sleep(50000)
EndFunc