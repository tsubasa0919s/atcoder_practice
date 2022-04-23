a, b = gets.chomp.split.map(&:to_i)
if b % a == 0
  puts "Yes"
else
  puts "No"
end