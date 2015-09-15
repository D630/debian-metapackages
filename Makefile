#!/usr/bin/make -f

all: d630-meta

d630-meta:
	if [ -d d630-metapackages ]; then cd d630-metapackages ; debuild -uc -us; fi

clean:
	debclean --cleandebs
	rm -f *.dsc *.tar.gz *~
