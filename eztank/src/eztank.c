#include <stdlib.h>
#include <string.h>

#include <eztank.h>

#define PUBLIC __attribute__((visibility("default")))

// Prototipos de funciones publicas
int eztank_pub_open(_EZTANK_OPEN_PARAM *param);

// Funciones publicas
PUBLIC _EZTANK_ *eztank_init() {

    _EZTANK_ *pointer = (_EZTANK_ *)malloc(sizeof(_EZTANK_));
    memset(pointer, 0x00, sizeof(_EZTANK_));

    pointer->open = eztank_pub_open;

    return pointer;
}

//
PUBLIC void eztank_end(_EZTANK_ **pointer) {

    free(*pointer);
    *pointer = NULL;
}

// EOF
