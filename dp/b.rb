n, k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)
 
d = Array.new(n, 10 ** 4 + 1)
d[0] = 0
 
1.upto(n-1) do |i|
  k.times do |j|
    break if i - j < 0
    dd = d[i-j-1] + (h[i-j-1] - h[i]).abs
    d[i] = dd if dd < d[i]
  end
end
puts d[n-1]