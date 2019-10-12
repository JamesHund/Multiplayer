tool
extends NinePatchRect

export(String) var text setget set_text
export(Font) var font setget set_font
export(int) var font_size setget set_font_size

signal button_down
signal button_up
signal pressed
signal toggled(button_pressed)

func _ready():
	_on_NinePatchButton_resized()

func _on_NinePatchButton_resized():
	$TextureButton.rect_size = rect_size
	$RichTextLabel.rect_size = rect_size
	
func set_text(_text):
	text = _text
	$RichTextLabel.bbcode_text = text
	
func set_font(_font):
	font = _font
	
func set_font_size(_font_size):
	pass

func _on_TextureButton_button_down():
	emit_signal("button_down")

func _on_TextureButton_button_up():
	emit_signal("button_up")
	
func _on_TextureButton_pressed():
	emit_signal("pressed")

func _on_TextureButton_toggled(button_pressed):
	emit_signal("toggled",button_pressed)
