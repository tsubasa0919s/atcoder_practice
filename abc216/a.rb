a, b = gets.split(".").map(&:to_i)

if b <= 2
  puts "#{a}-"
elsif 3 <= b && b <= 6
  puts a
else
  puts "#{a}+"
end