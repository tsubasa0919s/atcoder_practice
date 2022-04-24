n = gets.to_i
d = Array.new(n, 0)
(n-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  d[a-1] += 1
  d[b-1] += 1
end
if d.max < n - 1
  puts "No"
else
  puts "Yes"
end

