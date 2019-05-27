signal2 = Array{ComplexF32, 1}(undef, 1000) # 1000 Samples
stream2 = open("/Users/Oskar/Desktop/Daten/raw_data_antenna2.dat", "r")
read!(stream2, signal2) # First 1000 samples
read!(stream2, signal2) # Next 1000 samples
