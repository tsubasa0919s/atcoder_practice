a, b = gets.chomp.split.map{_1.split("").map(&:to_i).sum}
if a > b
  puts a
else
  puts b
end
