__gshared CArgs _cArgs;

pragma(crt_constructor)
extern (C) void ARGV_INIT_ARRAY(int argc, char** argv, char** _environ)
{
    _cArgs.argc = argc;
    _cArgs.argv = argv;
}

struct CArgs
{
    int argc;
    char** argv;
}

extern (C)
{
    extern CArgs rt_cArgs() @nogc;

    void argsCheck()
    {
        assert(_cArgs.argc != 0);
    }
}
