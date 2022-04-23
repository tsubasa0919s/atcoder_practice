u = gets.chomp.split.map(&:to_i).uniq
if u.length == 3 or u.length == 1
  puts "No"
else
  puts "Yes"
end