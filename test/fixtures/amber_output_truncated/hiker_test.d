import std.stdio;
import hiker;

// druntime writes its summary line to stderr, and the runner keeps only the
// first 50K of each stream. Filling stderr here pushes that summary out.

unittest
{
    foreach (i; 0 .. 4000)
    {
        stderr.writeln("counting the ways to reach the answer: ", i);
    }
    assert(answer() == 42, "answer() == 42");
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
