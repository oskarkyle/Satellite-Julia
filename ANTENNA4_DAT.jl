signal4 = Array{ComplexF32, 1}(undef, 1000) # 1000 Samples
stream4 = open("/Users/Oskar/Desktop/Daten/raw_data_antenna4.dat", "r")
read!(stream4, signal4) # First 1000 samples
read!(stream4, signal4) # Next 1000 samples
