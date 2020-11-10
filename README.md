# sum-next-dozen-ARM
Simple ARM assembly demonstrating calling functions from within functions.

## Build
Makefile builds `main.x` by default:

```
$ make
gcc -g -gstabs main.c sumnextdozen.s sumsix.s -o main.x
```

## Use
You can run `main.x` with no argument

```
$ ./main.x 
The sum of 10 .. 21 is 186
```

or with a single integer argument

```
$ ./main.x 3
The sum of 3 .. 14 is 102
```

