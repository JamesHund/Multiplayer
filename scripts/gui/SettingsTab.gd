extends MarginContainer

func _ready():
	$VBoxContainer/HSplitContainer/VBoxContainer/NameContainer/NameField.set_text(SettingsData.player_name)
	
func _on_ApplyButton_pressed():
	SettingsData.player_name = $VBoxContainer/HSplitContainer/VBoxContainer/NameContainer/NameField.get_text()
	SettingsData.apply_settings()
	
func _on_Settings_visibility_changed():
	if is_visible_in_tree():
		$VBoxContainer/HSplitContainer/VBoxContainer/NameContainer/NameField.set_text(SettingsData.player_name)
