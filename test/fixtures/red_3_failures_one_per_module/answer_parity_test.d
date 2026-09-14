module answer_parity_test;

import hiker;

unittest
{
    assert(answer() % 2 == 1, "answer() is odd");
}
