a, x = gets.chomp.split.map(&:to_i)
if a * 500 < x
  puts "No"
else
  puts "Yes"
end