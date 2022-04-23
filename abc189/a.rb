s = gets.chomp.split("")
if s.uniq.length == 1
  puts "Won"
else
  puts "Lost"
end