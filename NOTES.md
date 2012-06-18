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
  * 111111111011111
  * 10
  * 0
* Decipher output from `experiments/AlgorithmTesting/`
* `cp experiments/AlgorithmTesting/finalAnalysisReport.txt ../..`

All tests work except #10:

* [01] Frequency
* [02] Block Frequency
* [03] Cumulative Sums
* [04] Runs
* [05] Longest Run of Ones
* [06] Rank
* [07] Discrete Fourier Transform
* [08] Nonperiodic Template Matchings
* [09] Overlapping Template Matchings
* [10] Universal Statistical (fails for unknown reason with seg fault)
* [11] Approximate Entropy
* [12] Random Excursions
* [13] Random Excursions Variant
* [14] Serial
* [15] Linear Complexity

# Testing Julia's RNG's
* Generate random bits (and timing info) using Julia's RNG's:
  * `julia src/generate_julia_bits.jl`
* Need to automatically run relevant tests.
* Need to automatically parse and interpret results.
