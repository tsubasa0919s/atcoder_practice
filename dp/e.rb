n, w = gets.chomp.split.map(&:to_i)
u, v = n.times.map{gets.chomp.split.map(&:to_i)}.transpose

d = Array.new(n+1).map{Array.new(10**5 + 1, 10 ** 18)}
d[0][0] = 0

n.times do |i|
  (10**5).times do |j|
    d[i+1][j] = d[i][j]
  end
  (10**5).times do |j|
    next if j + v[i] > 10 ** 5
    next if d[i][j] > w
    dd = d[i][j] + u[i]
    d[i+1][j+v[i]] = dd if d[i+1][j+v[i]] > dd
  end
end

(10**5).times do |i|
  j = 10**5 - i
  if d[n][j] <= w
    puts j
    exit
  end
end
