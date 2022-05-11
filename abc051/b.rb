k, s = gets.chomp.split.map(&:to_i)
c = 0
(k+1).times do |x|
  (k+1).times do |y|
    z = s - x - y
    c += 1 if 0 <= z and z <= k
  end
end
puts c