#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

void * malloc(unsigned long size) {
	return vmalloc(size);
}

void free(void *addr) {
	vfree(addr);
}

size_t fwrite(void* ptr, size_t size, size_t nmemb, void* stream){return 0;}
int fputc(int chr, void *stream){
	return 0;
}

void __vfprintf_chk(void){}
void __fprintf_chk(void){}

void __errno_location(void){}
void pthread_cond_wait(void){}
void pthread_mutex_lock(void){}
void sigismember(void){}
void stderr(void){}
void pthread_mutex_unlock(void){}
void sigaction(void){}
void sigfillset(void){}
void pthread_sigmask(void){}
void setenv(void){}
void pthread_cond_broadcast(void){}
void nanosleep(void){}
void mmap(void){}
void sigaddset(void){}
void pthread_attr_init(void){}
void strerror(void){}
void sigemptyset(void){}
void pthread_create(void){}
void pthread_attr_getstacksize(void){}
void pthread_attr_destroy(void){}
void unsetenv(void){}
