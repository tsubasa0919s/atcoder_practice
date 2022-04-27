s = 3.times.map{gets.chomp}
a = gets.chomp.split("").map(&:to_i)
t = ""
a.each do |i|
  t <<= s[i-1]
end
puts t