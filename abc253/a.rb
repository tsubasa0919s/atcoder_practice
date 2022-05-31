a = gets.chomp.split.map(&:to_i)
if a[1] == a.sort[1]
  puts "Yes"
else
  puts "No"
end