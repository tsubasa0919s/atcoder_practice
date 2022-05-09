s = 4.times.map{gets.chomp}
if s.uniq.length == 4
  puts "Yes"
else
  puts "No"
end
