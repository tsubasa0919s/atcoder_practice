a, b, c, d, e, f, x = gets.chomp.split.map(&:to_i)

g = x / (a + c) * a
h = x / (d + f) * d
i = x % (a + c) == 0 ? 0 : [x % (a + c), a].min
j = x % (d + f) == 0 ? 0 : [x % (d + f), d].min
k = g * b + i * b
l = h * e + j * e

if  k == l
  puts "Draw"
elsif k > l
  puts "Takahashi"
else
  puts "Aoki"
end