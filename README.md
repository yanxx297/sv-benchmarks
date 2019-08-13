# SV-COMP for Symbolic Execution
Modified SV-COMP for testing FuzzBALL (potentially also other symbolic execution tools.)

### Build executables
Original SV-COMP benchmarks only compiles to object files (*.oc).
To build executable binaries, implement your own version of ``__VERIFIER_XXX`` Functions.
Example(s) can be found in [verifier.c](c/verifier/verifier.c).

To build *.oc files, move to the folder of benchmarks you want to build and run
```bash
make SYNTAX_ONLY=0
```

To build executable, link the benchmark's .oc file and the verifier's .oc file using gcc
```bash
gcc -m32 -no-pie overflow_1-2.oc ../verifier/verifier.oc -o overflow_1-2
```

### Run benchmarks symbolically
As a simple way of running SV benchmarks under FuzzBALL ,we replace ``__VERIFIER_nondet_xxx()`` with a symbolic variable using ``-skip-func-ret-symbol``.
```bash
fuzzball -trace-basic -trace-insns -linux-syscalls \
-solver smtlib -solver-path ../../../../../lib/z3/build/z3 \
-skip-func-ret-symbol 0x080485de=n \
diamond_2-1 -- ./diamond_2-1 0 
```

To check the error, using  ``-check-condition-at`` with the entry point of ``__VERIFIER_ error`` and true condition.


