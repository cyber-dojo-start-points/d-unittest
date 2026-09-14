import hiker;

unittest
{
    int* p = null;
    *p = answer();
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
