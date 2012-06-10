# Diehard
* Worryingly obscure by its own self-description.

# Dieharder
* Won't build on my system.

# STS from NIST
* `cd external`
* `unzip sts-2.1.zip`.
* `cd sts-2.1`
* `git init`
* `git add .`
* `git commit -m 'BLAH'`
  * This will make it easier to track output made by STS, which are hard to observe because of directory structure used.
* `make`
  * This will build the `assess` executable and some object files in `obj`.
* Run `./assess 10000` in accord with directions for test system found in Section 5-1 of PDF in `doc/`.
* Enter the following choices:
  * 0
  * ../../output/julia_bits.txt
  * 0
  * 000000100000000
  * 10
  * 0
* Decipher output from `experiments/AlgorithmTesting/`

# Testing Julia's RNG's
* Generate random bits (and timing info) using Julia's RNG's:
  * `julia src/generate_julia_bits.jl`
* Need to automatically run relevant tests.
* Need to automatically parse and interpret results.
