class_name PlayerState extends State


#this will serve as a reference
const Standing = "Standing"
const Crouching = "Crouching"
const Proning = "Proning"
const ProneCrouch = "ProneCrouch"

#static var crouching : bool = false

static var crouchingFromStand : bool = false
static var crouchingFromProne : bool = false
static var proning : bool = false


const proning_speed = 1.8
const crouching_speed = 2.3
const walking_speed = 5.5
const running_speed = 12.5
const JUMP_VELOCITY = 4.5



#for debugging
#var display_output = "crouching: %s, proning: %s" % [str(crouching), str(proning)]



var CharacterPlayer : CharacterBody3D

func _ready() -> void:
	await owner.ready
	CharacterPlayer = owner as CharacterBody3D    
	assert(CharacterPlayer != null, "The PlayerState state type must be used only in the player scene. It needs the owner to be a Player node.")
