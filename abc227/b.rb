n = gets.to_i
s = gets.chomp.split.map(&:to_i)

d = 0
n.times do |i|
  (1..1001).each do |a|
    if (s[i] - 3 * a) % (4 * a + 3) == 0 and  (s[i] - 3 * a) / (4 * a + 3) > 0
      d += 1
      break
    end
  end
end
puts n - d