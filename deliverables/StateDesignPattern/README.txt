This system allows the main node for the initial scene of EchoesOfTime to switch
states according to the playthrough progress.

There are two objects in this room the player can interact with: a clock and a door.

From the initial state, the player can walk over the clock to 'pick it up' and move
to the 'HasClock' state.

From the 'HasClock' state, the player can use the clock by pressing 'q' to obtain the key,
and move to the 'HasKey' state.

From the 'HasKey' state, the player can use the key by pressing 'q' next to the door,
allowing the player to go to the next scene/room.

Note that there are text prompts throughout this.

*

In our main software system in GoDot, states are associated with the root node of the scene,
mainNode, and code to implement the states and associated behavior is written in mainnode.gd
(or github.com/NoomMiner/Echoes-of-Time/blob/main/EchoesofTimeGodot/mainnode.gd), but it
doesn't use the object-oriented design pattern.

This collection of files implements the State design pattern for this system.
C++ syntax is used for classes and structure, but inbuilt GoDot functions and classes
are referenced to communicate the interactions with our GoDot software system.
