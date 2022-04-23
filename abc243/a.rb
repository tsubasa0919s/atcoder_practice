v, a, b, c = gets.chomp.split(" ").map(&:to_i)

s = a + b + c
v =  v % s

if v < a
  puts "F"
elsif v < a + b
  puts "M"
else
  puts "T"
end