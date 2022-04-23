s = gets
t = gets

c = 0
3.times do |i|
  c += 1 if s[i] == t[i]
end
puts c