include("/Users/Oskar/.julia/config/ANTENNA2_DAT.jl")
include("/Users/Oskar/.julia/config/ANTENNA1_DAT.jl")
include("/Users/Oskar/.julia/config/ANTENNA3_DAT.jl")
include("/Users/Oskar/.julia/config/ANTENNA4_DAT.jl")
#include("/Users/Oskar/.julia/config/sat_pos_einlesen.jl")

using Tracking
import Tracking: Hz, MHz
gpsl1 = Tracking.GPSL1()
beamform(x) = x[:,1]
tracking_inits = TrackingInitials(1000Hz, 103)
track = init_tracking(gpsl1, tracking_inits, 2.5MHz, 0.0Hz, 1, num_ants = NumAnts(4))
track, track_results1 = track(signal1, beamform)
amplitudes_and_phases_after_tracking = prompt(track_results1)
track, track_results2 = track(signal2, beamform)
amplitudes_and_phases_after_tracking = prompt(track_results2)
track, track_results3 = track(signal3, beamform)
amplitudes_and_phases_after_tracking = prompt(track_results3)
track, track_results4 = track(signal4, beamform)


using Plots, DSP
p1 = periodogram(signal1, fs = 2.5e6)
num_half_samples = floor(Int, length(signal) / 2)
plot(circshift(freq(p1), num_half_samples), circshift(power(p1), num_half_samples))
hold
p2 = periodogram(signal, fs = 2.5e6)
num_half_samples = floor(Int, length(signal) / 2)
plot(circshift(freq(p2), num_half_samples), circshift(power(p2), num_half_samples))
hold
p3 = periodogram(signal, fs = 2.5e6)
num_half_samples = floor(Int, length(signal) / 2)
plot(circshift(freq(p3), num_half_samples), circshift(power(p3), num_half_samples))
