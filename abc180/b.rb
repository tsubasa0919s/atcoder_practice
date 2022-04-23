n = gets.to_i
x = gets.chop.split.map(&:to_i)

d = 0
n.times do |i|
  d += x[i] > 0 ? x[i] : - x[i]
end
puts d

d = 0
n.times do |i|
  d += x[i] ** 2
end
puts Math.sqrt(d)
puts x.map{|i| i > 0 ? i : - i}.max
