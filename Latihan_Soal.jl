#diketahui
m = 5.1      #massa
g = 9.8     #gravitasi
t = 8       #waktu
cd = 0.25   #koefisien hambatan

# kecepatan terminal
vt = sqrt(m * g / cd)

# hitung kecepatan pada t = 8s
v(t) = vt * tanh(sqrt(g * cd / m) * t)

#hasil
println("Kecepatan pada t = 8s adalah ", v(t), " m/s")
println("Kecepatan terminal adalah ", vt, " m/s")

#membuat grafik
using Plots
ts = 0:0.1:20
plot(ts, v.(ts), label="v(t)", xlabel="t (s)", ylabel="v (m/s)", linewidth=:2,
    title="Grafik", legend=:bottomright)
hline!([vt], linestyle=:dash, color=:green, linewidth=:2, label="v_terminal")