#include <Date.au3>
#include <MsgBoxConstants.au3>
	Local $x = 917
	Local $y = 119
	Local $ac0[3] = ["pumpk800511", "pum800511", "pumk800511"]
	Local $lv0[3] = [ 1, 1, 1]
	Local $ac1[3] = ["pud800511", "pue800511", "pub800511"]
	Local $lv1[3] = [ 1, 1, 0]
	Local $ac2[3] = ["phephe0513", "phapha0513","s793156529"]
	Local $lv2[3] = [ 1, 1, 1]
	Local $ac3[3] = ["jeica7799", "jeica0909","pug800511"]
	Local $lv3[3] = [ 1, 1, 0]
	;;Local $aArray[3] = [$ac1[0], $ac1[1], $ac1[2]]
	;;Local $aArray[3] = [$ac2[0], $ac2[1], $ac2[2]]
	Local $aArrayAc[12] = [$ac0[0],$ac0[1],$ac0[2],$ac1[0],$ac1[1],$ac1[2],$ac2[0],$ac2[1],$ac2[2],$ac3[0], $ac3[1], $ac3[2]]
	Local $aArrayLv[12] = [$lv0[0],$lv0[1],$lv0[2],$lv1[0],$lv1[1],$lv1[2],$lv2[0],$lv2[1],$lv2[2],$lv3[0], $lv3[1], $lv3[2]]

Local $i = 0

while $i = 0
HotKeySet("{F1}", "_Exit")
HotKeySet("{F8}", "HotKey_F8")
HotKeySet("{F9}", "HotKey_F9")
WEnd

Func _Exit()
$i = 1
Exit
EndFunc ;==> _Exit()

Func HotKey_F8()	
	Local $j = 0
	while $j < 12
		control(1,$aArrayAc[$j],1,$aArrayLv[$j]) ;;總控制
		;;control(是否要登帳號,帳號,是否要點公會,是否要航海)
		$j = $j + 1
	WEnd
	_Exit()
EndFunc

Func HotKey_F9()	
	Local $j = 1
	while $j < 2
		control(0,$aArrayAc[$j],1,$aArrayLv[$j]) ;;總控制
		$j = $j + 1
	WEnd
	_Exit()
EndFunc

;;若有需要給參數的,1=true,0=false
Func control(ByRef $isLogin,ByRef $acc,ByRef $isGuild,ByRef $isVsTral)
;;總控制

	if $isLogin > 0 Then
		changeAccount($acc)
	EndIf
	;;登帳號
	
	if $isGuild > 0 Then
		guild(1,0,0)
		;;guild(1,1,1)
	EndIf	
	;;公會
		;;參數1=敬拜,
		;;參數2=領取簽到獎勵,
		;;參數3=魔王攻城
	
	if $isVsTral > 0 Then
		visitTravel()
	EndIf	
	;;阿爾梅斯探險
		
	shop()
	;;商店	
	
	exchangeDiamond()
	;;兌換鑽石
	sendFriend() 
	;;發送幸運草給朋友
	thrownDice()
	;;甩骰子
	revMessage() 
	;;領取訊息
	mission() 
	;;任務
	logout() 
	;;退出登錄	
EndFunc

Func exchangeDiamond()
;;兌換鑽石
	MsgBox($MB_SYSTEMMODAL, "Title", "兌換鑽石", 0.5)
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
;;商店
	MsgBox($MB_SYSTEMMODAL, "Title", "商店", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	;;send("{esc}")	
	sleep(3000)	
	send("{v}")
	sleep(1500)
	send("{k}") ;;暫不購買
	sleep(1200)
	send("{y}") ;;暫不購買的確定
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
;;阿爾梅斯探險
	MsgBox($MB_SYSTEMMODAL, "Title", "阿爾梅斯探險", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(800)
	send("{r}")
	sleep(800)
	send("{s}")
	sleep(1000)
	vsTraCycle("左上角","{2}") ;;左上角
	vsTraCycle("右上角","{3}") ;;右上角
	vsTraCycle("左下角","{c}") ;;左下角
	vsTraCycle("右下角","{t}") ;;右下角
	send("{esc}")
	sleep(1000)
	send("{esc}")
EndFunc

Func vsTraCycle(ByRef $showText,ByRef $posit)
;;探險一個循環
	MsgBox($MB_SYSTEMMODAL, "Title", $showText, 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send($posit)
	sleep(3000)
	send("{o}") ;;探險獎勵確認
	sleep(800)	
	send($posit)
	sleep(800)
	send("{x}")
	sleep(800)
	send("{v}")		
	send("{e}") ;;沒有六星的探險
	sleep(1800)
EndFunc

Func thrownDice()
;;甩骰子
	MsgBox($MB_SYSTEMMODAL, "Title", "甩骰子", 0.5)
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
EndFunc

Func logout()
;;退出登錄
	sleep(800)
	send("{U}")
	sleep(500)
	send("{x}")
	sleep(20000)
	;;_Exit()
EndFunc

Func changeAccount(ByRef $acc)
;;換帳號
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
	local $yy = $y + 100
	MouseClick($MOUSE_CLICK_LEFT, $x, $yy, 1)
	sleep(800)
	send("{n}")
	sleep(4800)
	send("{space}")
	MsgBox($MB_SYSTEMMODAL, "Title", "登入成功", 0.5)
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
;;發送幸運草給朋友
	MsgBox($MB_SYSTEMMODAL, "Title", "發送幸運草給朋友", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{9}")
	sleep(3000)
	send("{0}")
	sleep(5000)
	send("{e}")
	sleep(1000)
	send("{esc}")
EndFunc

Func revMessage()
;;領取訊息
	MsgBox($MB_SYSTEMMODAL, "Title", "領取訊息", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{d}")
	sleep(800)
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
EndFunc

Func mission()
;;任務
	MsgBox($MB_SYSTEMMODAL, "Title", "任務", 0.5)
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
EndFunc


Func guild(ByRef $wsh,ByRef $siW,ByRef $devAtk)
;;公會
	MsgBox($MB_SYSTEMMODAL, "Title", "公會", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{g}")
	sleep(2500)
	send("{e}") ;;簽到確定	
	if $wsh > 0 Then
		worship() ;;敬拜
	EndIf
	if $siW > 0 Then
		signaWard() ;;簽到獎勵
	EndIf	
	if $devAtk > 0 Then
		devilAttack();;魔王攻城戰
	EndIf		
	sleep(1800)
	send("{esc}")
EndFunc

Func signaWard()
;;簽到獎勵
	MsgBox($MB_SYSTEMMODAL, "Title", "簽到獎勵", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{g}") ;;簽到獎勵
	sleep(1000)
	send("{v}") ;;領取獎勵
	sleep(1000)
	send("{e}")
	sleep(1000)
	send("{g}") ;;關閉簽到獎勵的視窗
EndFunc

Func worship()
;;敬拜
	MsgBox($MB_SYSTEMMODAL, "Title", "敬拜", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{k}")	;;敬拜
	sleep(1500)	
	send("{3}") ;;選公會長
	sleep(800)
	send("{y}")
	sleep(4000)
	send("{d}") ;;關掉敬拜的視窗
EndFunc

Func devilAttack()
;;魔王攻城戰	
	MsgBox($MB_SYSTEMMODAL, "Title", "魔王攻城戰", 0.5)
	sleep(800)
	MouseClick($MOUSE_CLICK_LEFT, $x, $y, 1)
	sleep(2000)
	send("{v}")	
	sleep(1000)
	send("{space}")	;;進入魔王攻城按鈕
	sleep(2000)
	send("{space}")
	MouseMove(100, 100, 1)
	sleep(1000)
	send("{space}") ;;戰鬥開始
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