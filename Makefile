EXEDIR = ./eztank ./exe

all: prepare build package install

prepare:
	$(shell cd run && bash ./scripts/zero.sh && cd .. )

build:
	$(foreach dir, $(EXEDIR), $(MAKE) all -C $(dir) -f Makefile.release ; )

pack:
	$(shell cd ./package && bash ./mkpkg2.sh && cd .. )


install:
	$(shell sudo dpkg -i ./package/eztank.deb )
