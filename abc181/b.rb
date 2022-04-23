n = gets.to_i

c = 0
n.times do |i|
  a, b = gets.split(" ").map(&:to_i)
  c += b * (b - a + 1);
  c -= (b - a) * (b - a + 1) / 2
end
puts c