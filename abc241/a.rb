a = gets.chomp.split(" ").map(&:to_i)

z = 0
3.times do |i|
  z = a[z]
end
puts z