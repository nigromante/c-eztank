#define EZLIBS_C

#include <ezlibs.h>

__attribute__((constructor)) void ezlibs_init() {
    eztank = eztank_init();
    ezvio = ezvio_init();
    return;
}

__attribute__((destructor)) void ezlibs_end() {
    eztank_end(&eztank);
    ezvio_end(&ezvio);
    return;
}
