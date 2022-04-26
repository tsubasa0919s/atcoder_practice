n = gets.to_i
t = gets.chomp.split.map(&:to_i)

d = 0
m = 0
n.times do |i|
  puts ((1 << t[i]) | d).to_s(2)
  if d <= (1 << m | d) | (1 << t[i])
    d = (1 << m | d) | (1 << t[i])
    m = t[i]
  end
end
puts ((1 << t[-1]) | d) & ((~Math.log(((1 << t[-1]) | d)).to_i) | t[-1])
# d = -1
# m = 0
# (n-1).times do |i|
#   puts (1 << t[i]) + (1 << d)
#   if m <= t[i+1]
#     d += (1 << t[i])
#   end
# end
# puts  (1 << t[-1]) + d