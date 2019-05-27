signal3 = Array{ComplexF32, 1}(undef, 1000) # 1000 Samples
stream3 = open("/Users/Oskar/Desktop/Daten/raw_data_antenna3.dat", "r")
read!(stream3, signal3) # First 1000 samples
read!(stream3, signal3) # Next 1000 samples
