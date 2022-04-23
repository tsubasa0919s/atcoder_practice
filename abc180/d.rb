x, y, a, b = gets.chop.split.map(&:to_i)

z = b
c = 0

(b / a).times do |i|
  c += 1
  z /= a
  break if z < 2
end

puts (y - x - 1) / b + c - 1
