obj-m += mod.o
mod-objs := module.o gomod.a


all: gomod.o
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

gomod.o: gomod.go;
	ls
	#go build -buildmode=c-archive -o gomod.a gomod.go
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

