#include "ClassDefinitions.h"

class Context: public Node2D {
    class State *current;
    public:
        void setState(State *nextState) {
            current = nextState;
        }
        void _ready(){
            set_process_input(true); 
        }
        void _input(InputEvent event){
            current.processInput(event);
        }
};
