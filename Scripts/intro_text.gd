extends Label

var intro = ["Welcome to the Kingdom of the Rose Paradise where Queen Ophelia resides.", 
"Her presence is well known amongst all the kingdoms of the land where every prince and princess is swayed by the Queen's beauty and desires to attract her.", 
"One of these princesses being Princess Selene of the kingdom of Blue moon ", 
"Will she succeed in her quest to the queen?"]
var line = 0

var intro_len = len(intro)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_dialogue()
	print_stats()
	

func _process(delta: float) -> void:
	intro_len = len(intro)
	


func _on_next_button_pressed() -> void:
	line += 1
	print_stats()
	if line < intro_len:
		new_dialogue()
	elif line == intro_len:
		get_tree().change_scene_to_file("res://scenes/starting_forest.tscn")
	else:
		line+=1
		new_dialogue()
	# add if statement to do the normal displaying else change to a you got the queen 
	# winning ending you live happily ever after


func _on_prev_button_pressed() -> void:
	if line != 0:
		line -= 1
	print_stats()
	new_dialogue()

func new_dialogue():
	var new_text = (intro[line])
	set_text(new_text)
	
func print_stats():
	print("line:", line, "\nintro_len:", intro_len)

	
