a, b = gets.chomp.split.map(&:to_i)
if a - b * 2 < 0
  puts 0
else
  puts a - b * 2
end