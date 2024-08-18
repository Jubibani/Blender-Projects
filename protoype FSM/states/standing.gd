extends PlayerState

func enter(previous_state_path: String, data := {}) -> void:
	print("Entered Standing state")
	player.animation_player.play("CROUCHING", -1, -player.crouching_animation_speed, true)
func physics_update(_delta: float) -> void:
	if Input.is_action_pressed("crouch_or_uncrouch"):
		toggle_crouch()
