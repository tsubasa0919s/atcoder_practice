n = gets.to_i
x, y = n.times.map{gets.chomp.split.map(&:to_i)}.transpose
d = 0
n.times do |i|
  n.times do |j|
    m =  Math.sqrt((x[i] - x[j]) ** 2 + (y[i] - y[j]) ** 2)
    d = m if m > d
  end
end
puts d