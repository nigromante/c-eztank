
//  Prototipos de funciones ---------------------------------------------------

//  --------------------------------------------------------------------- Open
typedef struct {
    int id;
} _EZVIO_OPEN_PARAM;
typedef int (*_EZVIO_OPEN_)(_EZVIO_OPEN_PARAM *param);

//  Contenedor de funciones ---------------------------------------------------
typedef struct {

    _EZVIO_OPEN_ open;

} _EZVIO_;

//  Funciones publicas ........................................................
_EZVIO_ *ezvio_init();
void ezvio_end(_EZVIO_ **pointer);
