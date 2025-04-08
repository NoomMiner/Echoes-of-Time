#include "Node.h"

class Node () 
{
    public: // everything is public in GoDot
        char* name;
        
        Node *parent;

        // associated script
        char *script_file_path;
        
        vector<Node*> children;
        
        // other variables ...
        int some_var;

        // various in-built function definitions...
        void _onReady () {
            // code here
        }
}