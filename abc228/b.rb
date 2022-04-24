n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = Array.new(n, 0)
x -= 1
b[x] = 1

while true
  x = a[x] - 1
  break if b[x] == 1
  b[x] = 1
end
puts b.count(1)