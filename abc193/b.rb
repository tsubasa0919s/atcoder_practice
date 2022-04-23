n = gets.to_i

s = 10000000000
n.times do |i|
  a, b, x = gets.split(" ").map(&:to_i)
  
  s = b if x - a > 0 && s > b
end

if s == 10000000000
  puts -1
else
  puts s
end