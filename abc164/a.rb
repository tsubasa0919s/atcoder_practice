s, w = gets.chomp.split.map(&:to_i)
if s > w
  puts "safe"
else
  puts "unsafe"
end