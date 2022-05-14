n, m = gets.chomp.split.map(&:to_i)
x, y = m.times.map{gets.chomp.split.map(&:to_i)}.transpose

a = Array.new(n).map{Array.new(n, 0)}
n.times do |i|
  a[i][i] = 1
end
m.times do |i|
  a[x[i]-1][y[i]-1] = 1
  a[y[i]-1][x[i]-1] = 1
end

c = 0
(1<<n).times do |i|
  l = []
  n.times do |j|
    if i[j] == 1
      l.each do |k|
        # p [a[k][j], k, j] if a[k][j] == 0
        if a[k][j] == 0
          l = []
          break
        end
      end
      l << j
    end
  end
  # p [l.length, l]
  c = l.length if c < l.length
end
puts c