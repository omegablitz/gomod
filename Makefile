obj-m += mod.o
mod-objs := module.o gomod.a runtime.o


all: gomod.o
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

gomod.o: gomod.go;
	go build -buildmode=c-archive gomod.go
clean:
	-rm -f gomod.h
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	-rm -f gomod.h.gch

