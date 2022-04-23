v,t,s,d = gets.split(" ").map(&:to_i)



puts d
puts v * t
puts v * s

if d < v * t || d > v * s
  puts "Yes"
else
  puts "No"
end