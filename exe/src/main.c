#include <ezlibs.h>
#include <stdio.h>

void test_tank() {

    _EZTANK_OPEN_PARAM param_tank;

    param_tank.id = 999;
    printf("\nt : %d\n", param_tank.id);

    param_tank.id = eztank->open(&param_tank);
    printf("\nt : %d\n", param_tank.id);

    param_tank.id = eztank->open(&param_tank);
    printf("\nt : %d\n", param_tank.id);
}

void test_vio() {
    _EZVIO_OPEN_PARAM param_vio;

    param_vio.id = 10;
    param_vio.id = ezvio->open(&param_vio);
    printf("\nt : %d\n", param_vio.id);
}

int main(int argc, char **argv) {

    test_tank();
    test_vio();

    return 0;
}
