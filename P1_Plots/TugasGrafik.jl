using Plots

# Titik-titik diamond (berlian)
x = [-3, -2, 2, 3, 0]
y = [0, 1, 1, 0, -3]


# Tutup poligon
x = vcat(x, x[1])
y = vcat(y, y[1])

# Plot diamond dengan border hitam & isi putih
plot(x, y, seriestype=:shape, c=:yellow, linecolor=:red, linewidth=13,
     aspect_ratio=1, legend=false, xlim=(-4, 4), ylim=(-4, 2),
     title="Logo Superman Lite")

# Tambahkan huruf "S" merah di tengah
annotate!(0, -0.6, text("S", :red, :center, 150))

