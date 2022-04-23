require "matrix"
n = gets.to_i
f = n.times.map{gets.chomp.split.map(&:to_i)}

d = []
n.times do |i|
  n.times do |j|
    a = Vector[f[i][0], f[i][1]]
    b = Vector[f[j][0], f[j][1]]
    d << (a - b).r
  end
end
puts d.max