a, b = gets.chomp.split.map(&:to_i)
c = Math.sqrt(a * a + b * b)
puts "#{a / c} #{b / c}"