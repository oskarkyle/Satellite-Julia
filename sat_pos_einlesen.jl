using CSV
for row in CSV.File("/Users/Oskar/Desktop/Rohdaten/ecef_sat_positions.csv")
println("prn=$(row.prn), x=$(row.x), y=$(row.y), z=$(row.z)")
end
