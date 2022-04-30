n = gets.to_i
a = gets.chomp.split.map(&:to_i)

puts a.index(a.sort[-2]) + 1