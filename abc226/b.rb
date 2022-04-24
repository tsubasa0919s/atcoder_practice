n = gets.to_i
b = n.times.map{gets.chomp.split.map(&:to_i)[1..]}
puts b.uniq.length