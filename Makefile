NAME = Swaylock-effects

all:
	$(MAKE) clear
	$(MAKE) release

release:
	meson build
	ninja -C build

clear:
	rm -rf build

install.core:
	@if [ ! -f ./build/swaylock ]; then echo -en "You need to run $(MAKE) all first.\n" && exit 1; fi
	meson install -C build

install: install.core

uninstall:
