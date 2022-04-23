a, b = gets.chomp.split(" ").map(&:to_i)

if b - a == 1 or (a == 1 and b == 10)
  puts "Yes"
else
  puts "No"
end