#! /bin/bash

julia src/generate_julia_bits.jl
cd external/sts-2.1

# Use ../../output/julia_bits.txt
./assess 100000
cp experiments/AlgorithmTesting/finalAnalysisReport.txt ../../julia_report.txt

# Use ../../output/nonrandom_bits.txt
./assess 100000
cp experiments/AlgorithmTesting/finalAnalysisReport.txt ../../nonrandom_report.txt

cd ../..
more julia_report.txt
more nonrandom_report.txt
