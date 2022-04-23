if gets.chomp.split.map(&:to_i).reduce(:+) > 21
  puts "bust"
else
  puts "win"
end