n = gets.to_i
t = n.times.map{gets.to_i}
m = 100000
(1<<n).times do |i|
  a = 0
  b = 0
  n.times do |j|
    if i[j] == 1
      a += t[j]
    else
      b += t[j]
    end
  end
  m = [m, [a, b].max].min
end
puts m