n = gets.to_i
a = n.times.map{gets.chomp.split.map(&:to_i)}
a.sort_by! {|x, l| x + l}

c = 0
left = -Float::INFINITY
a.each do |x, l|
  next if x - l < left
  left = x + l
  c += 1
end
puts c