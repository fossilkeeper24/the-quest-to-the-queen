extends Label

var speaker = ["Princess Selene", "Fairy", "Princess Selene", "Fairy", "Princess Selene"]
var speaker_no = 0

var dialogue = [["Dear Fairy, do you run this beautiful shop?"],
["Of course Princess! We have everything you could ever desire", 
"Trinkets! Antiques! Jewells!",
"We are at your service"],
["My dear fairy, do you have any beautiful jewels that could be used to attract and persuade for love?"],
["Of course dearie, the rose gold heart locket is popular amongst ones pursuing love!",
"It shimmers in a way that one could never resist.",
"And please call me Beatrice."],
["Thank you so much Beatrice, I am indebted to your kind work"]]


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
		global.dialogue_box = false
		global.locket_bought = true
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
