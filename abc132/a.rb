s = gets.chomp.split("")
if s.count(s.uniq[0]) == 2 and s.count(s.uniq[1]) == 2
  puts "Yes"
else
  puts "No"
end