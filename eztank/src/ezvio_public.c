#include <ezvio.h>

int ezvio_pub_open(_EZVIO_OPEN_PARAM *param) {

    int t = param->id;
    t++;

    return t;
}
