#ifndef EZLIBS_H
#define EZLIBS_H

#ifndef NULL
    #define NULL 0x00
#endif

#include <eztank.h>
#include <ezvio.h>

#ifdef EZLIBS_C

_EZTANK_ *eztank = NULL;
_EZVIO_ *ezvio = NULL;

#else

extern _EZTANK_ *eztank;
extern _EZVIO_ *ezvio;

#endif

#endif
