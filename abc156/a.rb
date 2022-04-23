n, r = gets.chomp.split.map(&:to_i)
if n < 10
  puts r + 100 * (10 - n)
else
  puts r
end