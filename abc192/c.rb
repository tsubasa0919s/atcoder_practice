n, k = gets.split(" ").map(&:to_i)

k.times do |i|
  n2_a = n.to_s.split("").sort
  n2_b = n2_a.reverse
  
  f = n2_b.join("").to_i - n2_a.join("").to_i
  
  n = f
end

puts n