import hiker;

unittest
{
    int n = answer();
    while (true)
    {
        n = n + 1;
    }
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
