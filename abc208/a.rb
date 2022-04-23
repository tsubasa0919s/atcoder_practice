a, b = gets.chomp.split.map(&:to_i)
if b <= a * 6 and a <= b
  puts "Yes"
else
  puts "No"
end 