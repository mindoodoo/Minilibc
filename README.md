# Minilibc

The goal of this project was to implement a set of **basic libc functions** using **x86-64 Assembly**.
**All these functions needed to be compliant with their libc counterparts.** This means that they follow the exact same behaviour as described in libc man pages.

## Implemented Functions

- strlen
- strchr
- strrchr
- memset
- memcpy
- strcmp
- memmove
- strncmp
- strcasecmp
- strstr
- strpbrk
- strcspn

## Building

This project compiles into a shared library named ```libasm.so``` using the ```make``` command and ```nasm``` compiler. You can then create a header file with the function prototypes of the functions in libc and can then test them by linking them against a basic C program.
