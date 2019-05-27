signal1 = Array{ComplexF32, 1}(undef, 1000) # 1000 Samples
stream1 = open("/Users/Oskar/Desktop/Daten/raw_data_antenna1.dat", "r")
read!(stream1, signal1) # First 1000 samples
read!(stream1, signal1) # Next 1000 samples
