x, y = gets.chomp.split.map(&:to_i)
if x == y
  puts x
else
  a = Array.new(3, 0)
  a[x] = 1
  a[y] = 1
  puts a.index(0)
end
  