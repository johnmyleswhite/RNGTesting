# Diehard
* Worryingly obscure from self-description.

# Dieharder
* Won't built on my system.

# STS from NIST
* `cd external`
* `unzip sts-2.1.zip`.
* `cd sts-2.1`
* `git init`
* `git add .`
* `git commit -m 'BLAH'`
  * This will make it easier to track output made by STS, which are hard to observe because of directory structure.
* `make`
  * This will build the `assess` executable and some object files in `obj`.
* Run `./assess 10000` in accord with directions for test system.
* Enter choices:
  * 0
  * ../../output/julia_bits.txt
  * 0
  * 000000100000000
  * 10
  * 0

# Testing Julia's RNG's
* Generate random bits using Julia generators. Time this step and keep a record.
  * Do this by running:
    * `julia src/generate_julia_bits.jl`
* Automatically run relevant tests.
* Automatically parse and interpret results.
