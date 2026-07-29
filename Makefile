EXEDIR = ./eztank ./exe

all: prepare build pack install

prepare:
	$(shell cd run && bash ./scripts/zero.sh && cd .. )

build:
	$(foreach dir, $(EXEDIR), $(MAKE) all -C $(dir) -f Makefile.release ; )

clean:
	$(foreach dir, $(EXEDIR), $(MAKE) clean -C $(dir) -f Makefile.release ; )
	rm -rf ./package/eztank*
	rm -rf ./run/debug ./run/release

pack:
	$(shell cd ./package && bash ./mkpkg.sh && cd .. )
	$(shell dpkg-deb --build ./package/eztank > /dev/null )
	$(shell dpkg -c ./package/eztank.deb > /dev/null )

install:
	$(shell sudo dpkg -i ./package/eztank.deb > /dev/null )

uninstall:
	$(shell sudo dpkg -r eztank-dev > /dev/null )

info:
	@dpkg -c ./package/eztank.deb
	@echo
	@dpkg -s eztank-dev 2> /dev/null
	@echo
	@dpkg -L eztank-dev 2> /dev/null
	@echo
	@echo "which eztank:"
	@which eztank 2> /dev/null

