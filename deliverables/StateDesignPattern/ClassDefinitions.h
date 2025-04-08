#ifndef CLASS_DEFINITIONS_H
#define CLASS_DEFINITIONS_H

/*
    Inbuilt godot functions/classes referenced:

    Node2D - the base of all 2d classes in GoDot
    _ready - called when a node is loaded
    set_process_input - allows node to recognize input
    _input - called when input is received w/ specific input as an argument
    InputEvent - class that contains details about input

    Additional references are noted in the .cpp files.
*/

class State {
    public:
        void processInput(InputEvent event);
};


class InitialState: public State {
    public:
        void processInput(InputEvent event);
        void onPlayerObtainsClock ();
};


class HasClock: public State {
    public:
        void processInput(InputEvent event);
};


class HasKey: public State {
    public:
        void processInput(InputEvent event);
};

class Context: public Node2D {
    class State *current;
    public:
        void setState(class State nextState);
        void _ready();
        void _input(InputEvent event);
};

#endif
