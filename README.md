
```console
~/dev/dlang/debug-args $ LANG=C make
dmd -lib library.d
cc -Wall -Wextra program.c -L./ -lrary -lphobos2 -o test.bin
./test.bin 1
uncaught exception
core.exception.AssertError@library.d(15): Assertion failure
Makefile:4: recipe for target 'all' failed
make: *** [all] Aborted (core dumped)
```
