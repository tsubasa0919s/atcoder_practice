a, b, c, x = gets.chomp.split(" ").map(&:to_i)
if x <= a
  puts 1
elsif  b < x
  puts 0
else
  d = b - a
  puts c.to_f / d  
end