a, b = gets.chomp.split.map(&:to_i)
if (a-b).abs < 3
  puts "Yes"
else
  puts "No"
end