n = gets.to_i
t = 2 ** 31
if -t <= n and n < t
  puts "Yes"
else
  puts "No"
end