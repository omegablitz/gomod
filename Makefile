obj-m += mod.o
mod-objs := module.o gomod.a runtime.o

# KBUILD_VERBOSE=1
# export KBUILD_VERBOSE

all: gomod.o
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

gomod.o: gomod.go;
	CGO_CPPFLAGS="-fno-common" go build -buildmode=c-archive --ldflags '-extldflags "-static"' gomod.go
clean:
	-rm -f gomod.h
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	-rm -f gomod.h.gch

insmod:
	sudo insmod "mod.ko"
	dmesg | tail

rmmod:
	sudo rmmod "mod"
	dmesg | tail
