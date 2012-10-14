function generate_n_bits(n_bits::Int64)
  bitstring = ""
  i = 1
  while i <= n_bits
    # Discard first 12 bits of output from rand().
    random_bits = split(bits(rand()), "")[13:end]
    for bit in random_bits
      if bit == "0"
        bitstring = strcat(bitstring, "1")
      else
        bitstring = strcat(bitstring, "0")
      end
      i += 1
      if i > n_bits
        break
      end
    end
  end
  bitstring
end

srand(1)

n_bits = 1_000_000

tic()
bitstring = generate_n_bits(n_bits)
total_time = toc()

f = open("output/julia_bits.txt", "w")
println(f, bitstring)
close(f)

f = open("output/julia_timing.txt", "w")
println(f, "$total_time seconds")
close(f)

f = open("output/nonrandom_bits.txt", "w")
println(f, "10"^500000)
close(f)
