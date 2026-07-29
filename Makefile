EXEDIR = ./eztank ./exe

all: prepare build pack install

prepare:
	$(shell cd run && bash ./scripts/zero.sh && cd .. )

build:
	$(foreach dir, $(EXEDIR), $(MAKE) all -C $(dir) -f Makefile.release ; )

pack:
	$(shell cd ./package && bash ./mkpkg.sh && cd .. )


install:
	$(shell sudo dpkg -i ./package/eztank.deb )

