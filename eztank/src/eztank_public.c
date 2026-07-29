#include <eztank.h>

int eztank_pub_open(_EZTANK_OPEN_PARAM *param) {

    int t = param->id;
    t++;

    return t;
}
