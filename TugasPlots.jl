using Plots

θ = range(0, 2π, length=500)

#lingkaran 1
r1 = 5
x1 = r1 .* cos.(θ)
y1 = r1 .* sin.(θ)

#lingkaran 2
r2 = 4
x2 = r2 .* cos.(θ)
y2 = r2 .* sin.(θ)

#lingkaran 3
r3 = 3
x3 = r3 .* cos.(θ)
y3 = r3 .* sin.(θ)

#lingkaran 4
r4 = 2
x4 = r4 .* cos.(θ)
y4 = r4 .* sin.(θ)

#bintang
n = 5  #sudut bintang
θ_star = range(0, 2π, length=2n + 1)

# radius bergantian (panjang–pendek)
r_out = 1.9
r_in = 0.8
r_star = [i % 2 == 1 ? r_out : r_in for i in 1:length(θ_star)]

# koordinat bintang
x_star = r_star .* cos.(θ_star)
y_star = r_star .* sin.(θ_star)

#plot lingkaran
#1
plot(x1, y1, seriestype=:shape, c=:red, aspect_ratio=1, title="Captain America")
#2
plot!(x2, y2, seriestype=:shape, c=:silver)
#3
plot!(x3, y3, seriestype=:shape, c=:red)
#4
plot!(x4, y4, seriestype=:shape, c=:blue)

#plot bintang
plot!(x_star, y_star, seriestype=:shape, c=:silver)