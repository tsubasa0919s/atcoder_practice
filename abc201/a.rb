a = gets.chomp.split.map(&:to_i).sort
if a[2] - a[1] == a[1] - a[0]
  puts "Yes"
else
  puts "No"
end