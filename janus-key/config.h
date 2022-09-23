#include "./janus-key.h"

janus_key janus_map[] = {
    // key                1st function     2nd function
    {  KEY_CAPSLOCK,      KEY_ESC,	}, // Change both CAPS' primary and secondary function
    {  KEY_ESC,           KEY_CAPSLOCK  }
};

// Delay in milliseconds. 
unsigned int max_delay = 300; // If a key is held down for a time
			      // greater than max_delay, then, when
			      // released, it will not send its
			      // primary function
