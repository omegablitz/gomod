#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

void * malloc(unsigned long size) {
	return vmalloc(size);
}

void free(void *addr) {
	vfree(addr);
}
