a, b, t = gets.chomp.split.map(&:to_i)
s = 0
30.times do |i|
  break if a * (i + 1)  > t
  s += b
end
puts s