MODULE_NAME=pl2303
MODULE_NAME_KO=$(MODULE_NAME).ko

# Ensure $M variable is set
ifeq ($(M),)
	# When calling make, the $M variable is the path in the kernel
	# source code (/usr/src/linux-*)
	# For other action we use the current path
	M=.
endif
obj-m += pl2303.o
EXTRA_CFLAGS=-g

ifeq ($(KERNEL_VERSION),)
KERNEL_VERSION=$(shell uname -r)
endif

# make
all:
	$(MAKE) -C /lib/modules/$(KERNEL_VERSION)/build M=$(PWD) modules

# make clean
clean:
	$(MAKE) -C /lib/modules/$(KERNEL_VERSION)/build M=$(PWD) clean
