
//  Prototipos de funciones ---------------------------------------------------

//  --------------------------------------------------------------------- Open
typedef struct {
    int id;
} _EZTANK_OPEN_PARAM;
typedef int (*_EZTANK_OPEN_)(_EZTANK_OPEN_PARAM *param);

//  Contenedor de funciones ---------------------------------------------------
typedef struct {

    _EZTANK_OPEN_ open;

} _EZTANK_;

//  Funciones publicas ........................................................
_EZTANK_ *eztank_init();
void eztank_end(_EZTANK_ **pointer);
