s, t = gets.chomp.split.map(&:to_i)

d = 0
(0..101).each do |a|
  (0..101).each do |b|
    (0..101).each do |c|
      d += 1 if a + b + c <= s and a * b * c <= t
    end
  end
end
puts d