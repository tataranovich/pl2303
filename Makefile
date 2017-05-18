.PHONY: install uninstall reinstall

install:
	! test -d /usr/src/pl2303-3.16.43.1
	cp -r pl2303-3.16.43.1 /usr/src
	dkms add -m pl2303 -v 3.16.43.1
	dkms autoinstall -m pl2303 -v 3.16.43.1
	modprobe pl2303

uninstall:
	test -d /usr/src/pl2303-3.16.43.1
	modprobe -r pl2303
	dkms remove -m pl2303 -v 3.16.43.1 --all
	rm -fr /usr/src/pl2303-3.16.43.1

reinstall: uninstall install
