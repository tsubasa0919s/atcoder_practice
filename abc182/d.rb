n = gets.to_i
a = gets.split(" ").map(&:to_i)

cur = 0
dif = 0
ans = 0

n_max = 0

n.times do |i|
  ans = cur + n_max if cur + n_max > ans
  
  c = cur + a[i] + dif
  ans = c if c > ans
  
  dif = a[i] + dif
  cur = c
  
  n_max = dif if n_max < dif
end

puts ans