s = gets.chomp.split("").map(&:to_i)
c = 0

(1<<(s.length-1)).times do |i|
  t = 0
  (s.length-1).times do |j|
    t = t * 10 + s[j]
    if i[j] == 1
      c += t
      t = 0
    end
  end
  c += t * 10 + s[-1]
end
puts c