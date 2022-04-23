a, b = gets.chomp.split.map(&:to_i)
if a + b >= 15 and b >= 8
  puts 1
elsif a + b >= 10 and b >= 3
  puts 2
elsif a + b >= 3
  puts 3
else
  puts 4
end