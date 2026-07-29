EXEDIR = ./eztank ./exe

all: prepare build package install

prepare:
	cd run && ./scripts/zero.sh && cd ..

build:
	echo Julian
	$(foreach dir, $(EXEDIR), $(MAKE) all -C $(dir) -f Makefile.release ; )

package:
    $(shell cd package && bash ./mkpkg.sh && cd .. )

install:
	$(shell sudo dpkg -i ./package/eztank.deb )
