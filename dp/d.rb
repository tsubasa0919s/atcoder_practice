n, w = gets.chomp.split.map(&:to_i)
u, v = n.times.map{gets.chomp.split.map(&:to_i)}.transpose

d = Array.new(n+1).map{Array.new(w+1, 0)}
d[0][0] = 0

n.times do |i|
  (w+1).times do |j|
    if j - u[i] >= 0
      d[i+1][j] = [d[i][j], d[i][j-u[i]] + v[i]].max
    else
      d[i+1][j] = d[i][j]
    end
  end
end

puts d[n].max
