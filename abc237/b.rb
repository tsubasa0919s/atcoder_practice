n, m = gets.chomp.split.map(&:to_i)
a = n.times.map{gets.chomp.split.map(&:to_i)}
b = a.transpose
m.times do |i|
  puts b[i].join(" ")
end