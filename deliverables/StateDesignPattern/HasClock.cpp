#include "ClassDefinitions.h"


class HasClock: public State {
    public:
        void processInput(InputEvent event) {
            // inbuilt: checks if 'q' is being pressed
	        if Input.is_key_pressed(KEY_Q):
                // changes message when by door to prompt the user to use the key
		        get_child(2).assoText = get_node("Door/usekeyprompt")
                // removes message associated with clock
		        get_node("Clock/RichTextLabel").visible = false
                // replaces old prompt with new if the player is already by the door
		        if (get_node("Door/doorlocked").visible == true):
			        get_node("Door/doorlocked").visible = false
			        get_node("Door/usekeyprompt").visible = true
		        context.setState(HasKey);
        }
};
