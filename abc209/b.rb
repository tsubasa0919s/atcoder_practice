n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a = a.map.with_index{|v, i| (i + 1) % 2 == 0 ? v - 1 : v}

if a.sum <= x
  puts "Yes"
else
  puts "No"
end