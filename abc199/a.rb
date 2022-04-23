a, b, c = gets.chomp.split.map(&:to_i)
if a * a + b * b < c * c
  puts "Yes"
else
  puts "No"
end
