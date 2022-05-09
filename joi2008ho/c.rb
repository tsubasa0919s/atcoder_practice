n, m = gets.chomp.split.map(&:to_i)
q = n.times.map{gets.to_i}
q.push(0)
d = Array.new((n + 1) * (n + 1), 0)

(n+1).times do |i|
  (n+1).times do |j|
    d[i * n + j] = q[i] + q[j]
  end
end
d = d.sort.reverse

a = 0
((n + 1) * (n + 1)).times do |i|
  next if d[i] > m
  e = m - d[i]
  j = d.bsearch {|x| x <= e}
  j = 0  if j == nil
  a = d[i] + j if a < d[i] + j
end

puts a

