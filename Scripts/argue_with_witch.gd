extends Label

var speaker = ["Witch", "Princess Selene", "Witch", "Princess Selene", "Witch", "Princess Selene", "Witch", "Princess Selene", "Witch", "Princess Selene", "Witch"]
var speaker_no = 0

var dialogue = [["*Thinking to herself*", 
"What a beautiful princess roaming these woods! ", 
"look at the way her golden crown sparkles as well as the shimmer of that locket!", 
"*talking to princess*", 
"Dear Princess, what takes you to these woods?"],
["I have a duty I must fulfill today, something very important and special to me"],
["Well I also have a duty to fulfill"],
["And what may that be?"],
["I am astonished by your beauty and the way your wings flutter ", 
"we rarely get any nobility roaming these parts of the kingdom", 
"I believe it is my duty to get to know you more and pursue your love"],
["I am so sorry, but my heart is filled with love for another woman", 
"I hope you take this respectfully"],
["Another woman???", 
"Of course you’re nothing but a pompous princess,", 
"I bet there are millions of people at your feet in love with you", 
"*snatches locket*", 
"This locket shall be mine!!"],
["No! Please!", 
"That locket is very important. I need to give it to the Queen!"],
["The Queen! Oh my lord! You're not going to punish me are you? ",
 "Nobody dares to face the punishment of royalty"],
["Give me back the locket and all shall be well"],
["Very well then princess."]]

var dialogue_no = 0
var dialogue_len = len(dialogue[speaker_no])

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_dialogue()
	print_stats()
	global.vn_mode = true

func _process(delta: float) -> void:
	dialogue_len = len(dialogue[speaker_no])
	global.vn_mode = true


func _on_next_button_pressed() -> void:
	dialogue_no += 1
	print_stats()
	if dialogue_no < dialogue_len:
		new_dialogue()
	elif speaker_no == len(speaker)-1:
		get_tree().change_scene_to_file("res://scenes/witch_forest.tscn")
		global.vn_mode = false
	else:
		speaker_no += 1
		dialogue_no = 0
		new_dialogue()
	# add if statement to do the normal displaying else change to a you got the queen 
	# winning ending you live happily ever after


func _on_prev_button_pressed() -> void:
	if dialogue_no != 0:
		dialogue_no -= 1
	else:
		speaker_no -= 1
		dialogue_no = dialogue_len 
	print_stats()
	new_dialogue()

func new_dialogue():
	var new_text = (speaker[speaker_no] + ": "+ dialogue[speaker_no][dialogue_no])
	set_text(new_text)
	
func print_stats():
	print("dialogue_no:", dialogue_no, "\nspeaker_no:", speaker_no, "\ndialogue_len:", dialogue_len)
