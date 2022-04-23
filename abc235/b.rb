n = gets.to_i
h = gets.chomp.split.map(&:to_i)

d = h[0]
(n-1).times do |i|
  if d < h[i+1]
    d = h[i+1]
  else
    puts d
    exit
  end
end
puts d