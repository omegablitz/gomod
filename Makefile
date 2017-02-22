obj-m += mod.o
mod-objs := module.o gomod.a


all: gomod.o
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

gomod.o: gomod.go;
	go build -buildmode=c-archive gomod.go
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm gomod.h
	rm gomod.h.gch

