n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

puts a.select{_1 < q}.length