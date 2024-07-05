extends Node2D

var alls = 0
var calls = 0
var mul = false
var div = false
var add = false
var sub = false
var equal = false
var error = false

var bud = [0,1,2,3,4,5,6,7,8,9]

func _process(_delta):
	$controls/all.text = str(alls)
	if alls > 99999999:
		$controls/all.text = str("ERROR")
		error = true
	else:
		error = false
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().reload_current_scene()

func _on_one_pressed():
	if alls == 0:
		alls += bud[1]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[1]
func _on_two_pressed():
	if alls == 0:
		alls += bud[2]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[2]
func _on_three_pressed():
	if alls == 0:
		alls += bud[3]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[3]
func _on_four_pressed():
	if alls == 0:
		alls += bud[4]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[4]
func _on_five_pressed():
	if alls == 0:
		alls += bud[5]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[5]
func _on_six_pressed():
	if alls == 0:
		alls += bud[6]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[6]
func _on_seven_pressed():
	if alls == 0:
		alls += bud[7]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[7]
func _on_eight_pressed():
	if alls == 0:
		alls += bud[8]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[8]
func _on_nine_pressed():
	if alls == 0:
		alls += bud[9]
		return
	if alls > 0:
		alls -= -(alls * 10) + alls - bud[9]
func _on_zero_pressed():
	if alls == 0:
		alls += bud[0]
	if alls > 0:
		alls -= -(alls * 10) + alls

func _on_multi_pressed():
	mul = true
	calls = alls
	alls = 0
	print(alls)
	print(calls)

func _on_divide_pressed():
	div = true
	calls = alls
	alls = 0
	print(alls)
	print(calls)

func _on_add_pressed():
	add = true
	calls = alls
	alls = 0
	print(alls)
	print(calls)

func _on_subtract_pressed():
	sub = true
	calls = alls
	alls = 0
	print(alls)
	print(calls)

func _on_equal_pressed():
	print(str(alls) + " EQ")
	print(str(calls) + " CEQ")
	if calls > 0:
		equal = true
	else:
		equal = false
	if equal == true:
		if alls == 0:
			calls = alls
		if mul == true:
			alls = alls * calls
			calls = 0
		if div == true:
			alls = calls / alls
			calls = 0
		if add == true:
			alls = alls + calls
			calls = 0
		if sub == true:
			alls = calls - alls
			calls = 0
		mul = false
		div = false
		add = false
		sub = false
	if error == true:
		alls = 0
		calls = 0
		$controls/all.text = str(alls)
