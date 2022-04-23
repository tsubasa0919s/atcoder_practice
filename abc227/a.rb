n, k, a = gets.chomp.split.map(&:to_i)
b = (a + k - 1) % n
b = n if b == 0
puts b