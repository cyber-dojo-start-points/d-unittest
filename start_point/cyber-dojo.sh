# Builds every .d file at the top of your kata into one program, with its
# unittest blocks compiled in, and runs it. Every file is compiled, so one
# that does not compile is reported even if nothing imports it.
LDC_FLAGS=()
LDC_FLAGS+=(-unittest)       # compile the unittest blocks in
LDC_FLAGS+=(-of=run-tests)   # the program to build
LDC_FLAGS+=(-od=/tmp/ldc)    # object files go here rather than beside your code

# If your code crashes, for example through a null pointer, D prints the
# program's raw stack addresses, one per line, such as
#   ./run-tests(+0x1e09c) [0xaaaacb13e09c]
# They name no file or line of yours, so they are left out, and what remains
# is the "Segmentation fault" line saying the tests crashed.
readonly FRAME='^[^ ]+\([^ ]*\+0x[0-9a-f]+\) \[0x[0-9a-f]+\]$'

ldc2 "${LDC_FLAGS[@]}" *.d

if [ $? -eq 0 ]; then
  ./run-tests 2> >(grep --invert-match --extended-regexp "${FRAME}" >&2)
fi
