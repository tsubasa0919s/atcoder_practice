a, b, c = gets.chomp.split("").map{_1 == "R" ? true : false}
if a and b and c
  puts 3
elsif (a and b) or (b and c)
  puts 2
elsif a or b or c
  puts 1
else
  puts 0
end
