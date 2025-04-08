#include "ClassDefinitions.h"


class InitialState: public State {
    public:
        void processInput(InputEvent event) {
            pass
        }

        // this function would be linked to the clock node, which emits a signal upon
        // the player walking over it
        void onPlayerObtainsClock () {
		    context.setState(HasClock);
        }
};
