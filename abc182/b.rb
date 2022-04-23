n = gets.to_i
a = gets.split(" ").map(&:to_i)

b = 1
c = 0
a.max.times do |i|
  next if i == 0
  d = 0
  a.length.times do |j|
    if a[j] % (i + 1) == 0
      d += 1
    end
  end
  if c <= d
    c = d
    b = i + 1
  end
end

puts b