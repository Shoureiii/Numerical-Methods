using Plots

θ = range(0, 2π, length=500)

#Lingkaran luar
r1 = 5
x1 = r1 .* cos.(θ)
y1 = r1 .* sin.(θ)

#Lingkaran dalam
r2 = 4.5
x2 = r2 .* cos.(θ)
y2 = r2 .* sin.(θ)

#Plot lingkaran luar
plot(x1, y1, seriestype=:shape, c=:white, aspect_ratio=1, title="Fantastic 4")

#Plot lingkaran dalam
plot!(x2, y2, seriestype=:shape, c=:dodgerblue)

#angka 4
annotate!(0.87, 0.01, text("4", :white, :center, 250))