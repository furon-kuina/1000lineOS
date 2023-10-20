#pragma once

#define va_list __builtin_va_list
#define va_start __builtin_va_start
#define va_end __builtin_va_end
#define va_arg __builtin_va_arg

void printf(const char *fmt, ...);

typedef int bool;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;
typedef uint32_t size_t;
// represents "p"hysics "addr"ess
typedef uint32_t paddr_t;
// represents "v"irtual "addr"ess
typedef uint32_t vaddr_t;

#define true 1
#define false 0
#define NULL ((void *)0)
// align_up(value, align) = ceil(value / align) * align
#define align_up(value, align) __builtin_align_up(value, align)
// is_aligned(value, align) = value % align == 0
#define is_aligned(value, align) __builtin_is_aligned(value, align)
// offset of a member of a struct
#define offsetof(type, member) __builtin_offsetof(type, member)
#define va_list __builtin_va_list
#define va_start __builtin_va_start
#define va_end __builtin_va_end
#define va_arg __builtin_va_arg

void *memset(void *buf, char c, size_t n);
void *memcpy(void *dst, const void *src, size_t n);
char *strcpy(char *dst, const char *src);
int strcmp(const char *s1, const char *s2);

#define PAGE_SIZE 4096

#define SYS_PUTCHAR 1
#define SYS_GETCHAR 2
#define SYS_EXIT 3

#define SYS_READFILE 4
#define SYS_WRITEFILE 5
