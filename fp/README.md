
First, assuming amrex is at `../../`, build amrex with
```
./build_amrex.sh >& build_amrex.log.txt
```
We see that amrex is built with `-O3 -DNDEBUG`.

Second, build this test with
```
./build_fp.sh >& build_fp.log.txt
```
We see that it is built without `-O`.

