n, m = gets.chomp.split.map(&:to_i)
d = m.times.map{gets.chomp.split.map(&:to_i)}
d = d.sort_by{|a, b| b}

c = 0
left = 0
d.each do |a, b|
  if a >= left
    left = b
    c += 1
  end
end

puts c
