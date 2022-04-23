d = Array.new(361, 0)
n = gets.to_i
a = gets.chomp.split.map(&:to_i)

d[0] = 1
d[360] = 1
n.times do |i|
  d[a[0, i+1].sum % 360] = 1
end

m = 0
m1 = 0
361.times do |i|
  if d[i] == 1
    m = [m, i - m1].max
    m1 = i
  end
end

puts m
