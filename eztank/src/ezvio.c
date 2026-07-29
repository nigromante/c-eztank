#include <stdlib.h>
#include <string.h>

#include <ezvio.h>

#define PUBLIC __attribute__((visibility("default")))

// Prototipos de funciones publicas
int ezvio_pub_open(_EZVIO_OPEN_PARAM *param);

// Funciones publicas
PUBLIC _EZVIO_ *ezvio_init() {

    _EZVIO_ *pointer = (_EZVIO_ *)malloc(sizeof(_EZVIO_));
    memset(pointer, 0x00, sizeof(_EZVIO_));

    pointer->open = ezvio_pub_open;

    return pointer;
}

//
PUBLIC void ezvio_end(_EZVIO_ **pointer) {

    free(*pointer);
    *pointer = NULL;
}

// EOF
