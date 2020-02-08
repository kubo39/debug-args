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
        assert(rt_cArgs().argc != 0);
    }
}
