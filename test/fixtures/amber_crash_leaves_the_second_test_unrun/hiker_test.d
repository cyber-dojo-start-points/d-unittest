import std.stdio;
import hiker;

unittest
{
    int* p = null;
    *p = answer();
}

// The marker goes to stderr, which is unbuffered, so it would survive the
// crash in the test above. Its absence is what shows this test never ran.
unittest
{
    stderr.writeln("the second test ran");
    assert(answer() == 42, "answer() == 42");
}

// The program needs a main to link, though druntime runs the unittests instead of it.
void main() {}
