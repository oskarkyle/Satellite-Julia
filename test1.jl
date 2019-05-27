include("/Users/Oskar/.julia/config/ANTENNA1_DAT.jl")
include("/Users/Oskar/.julia/config/ANTENNA2_DAT.jl")

using Plots, DSP
p = periodogram(signal1, fs = 2.5e6)
num_half_samples = floor(Int, length(signal1) / 2)
plot(circshift(freq(p), num_half_samples), circshift(power(p), num_half_samples))

using Tracking
import Tracking: Hz, MHz
gpsl1 = Tracking.GPSL1()
tracking_inits = TrackingInitials(1000Hz, 103) # Doppler und Codephase des Satelliten # Verfolge Satellit mit der PRN 1
track = init_tracking(gpsl1, tracking_inits, 2.5MHz, 0.0Hz, 1)
track, track_results = track(signal1)
amplitude_and_phase_after_tracking = prompt(track_results)
track, track_results = track(signal2)
