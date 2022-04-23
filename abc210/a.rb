n, a, x, y = gets.chomp.split.map(&:to_i)
a = n if n < a
puts a * x + (n - a) * y