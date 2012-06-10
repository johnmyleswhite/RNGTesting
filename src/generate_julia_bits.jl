function generate_n_bits(n_bits::Int64)
  bitstring::ASCIIString = ""  
  for i = 1:n_bits
    if rand() > 0.5
      bitstring = strcat(bitstring, "1")
    else
      bitstring = strcat(bitstring, "0")
    end
  end
  bitstring
end

srand(1)

n_bits = 100_000

tic()
bitstring = generate_n_bits(n_bits)
total_time = toc()

f = open("output/julia_bits.txt", "w")
println(f, bitstring)
close(f)

f = open("output/julia_timing.txt", "w")
println(f, "$total_time seconds")
close(f)
