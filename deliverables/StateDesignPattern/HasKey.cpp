#include "ClassDefinitions.h"


class HasKey: public State {
    public:
        void processInput(InputEvent event) {
            // inbuilt: checks if 'q' is being pressed
	        if Input.is_key_pressed(KEY_Q):
                // inbuilt: checks if player is by door
		        if (get_child(2).isClose == true):
                    // inbuilt: switches to cake scene
			        get_tree().change_scene_to_file("res://cakeScene.tscn")
        }
};
