n = gets.to_i
h = gets.chomp.split.map(&:to_i)

d = Array.new(n, 10 ** 4 + 1)
d[0] = 0
d[1] = (h[0] - h[1]).abs

2.upto(n-1) do |i|
  d[i] = [d[i-1] + (h[i-1] - h[i]).abs, d[i-2] + (h[i-2] - h[i]).abs].min
end
puts d[n-1]