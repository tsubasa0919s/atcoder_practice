a, b = gets.chomp.split.map(&:to_i)
puts [a + b, a + a - 1, b + b - 1].max