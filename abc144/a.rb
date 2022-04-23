a, b = gets.chomp.split.map(&:to_i)
if a < 10 and b < 10
  puts a * b
else
  puts -1
end