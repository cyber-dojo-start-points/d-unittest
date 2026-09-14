import hiker;

// There is not a single unittest block here, so druntime has nothing to run
// and prints no summary line at all.

bool the_answer_is_42()
{
    return answer() == 42;
}

// gdc needs a main to link, though druntime runs the unittests instead of it.
void main() {}
