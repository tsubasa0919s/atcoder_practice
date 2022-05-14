d, g = gets.chomp.split.map(&:to_i)
q, c = d.times.map{gets.chomp.split.map(&:to_i)}.transpose

n = 10000
m = 0
l = 0
(1<<d).times do |i|
  a = 0
  b = 0
  d.times do |j|
    if i[j] == 1
      a += c[j] + q[j] * 100 * (j+1)
      b +=  q[j]
    end
  end
  if a >= g
    if n > b
      m = a
      n = b
    end
    # p [i.to_s(2), n, m]
  else
    if i == 1
      l = d
    else
      l = i.bit_length - i.to_s(2).index("0").to_i
      l = d if l == 0
    end
    t = ((g - a) / (100.0 * l)).ceil
    if t <= q[l-1] and n > b + t
      m = a + t * l * 100
      n = b + t if m >= g
    end
    # p [i.to_s(2), n, m, t, l, q[l-1]]
  end
end
puts n