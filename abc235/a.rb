a, b, c = gets.chomp.split("").map(&:to_i)

puts a * 100 + b * 10 + c + b * 100 + c * 10 + a + c * 100 + a * 10 + b 