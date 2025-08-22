extends Label

var speaker = ["Princess Selene", "The Queen", "Princess Selene"]
var speaker_no = 0

var dialogue = [[ "Hello my Queen", 
"I am Princess Selene and I have heard your name all the way from the village of Blue Moon.", 
"I am entranced by the way you lead your kingdom", 
"but most of all I am entranced by your beauty.", 
"So I hope you will do a dear princess a favour and take this golden locket as a gift to you and your kingdom.", 
"and maybe consider the possibility of accepting my love?"], 
["Its been awhile since I've received a visitor", 
"And believe me im sincerely flattered.", 
"Your beauty too is astonishing", 
"and I shall wear this locket and get to know you.", 
"My princess."], 
["I am honoured to begin this new journey with you.", 
"My Queen."]]
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
		get_tree().change_scene_to_file("res://scenes/ending_scene.tscn")
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
