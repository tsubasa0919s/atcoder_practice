c = 0
d = 0
n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

n.times do |i|
  c += 1 if a[i] == b[i]
  n.times do |j|
    if i != j and a[i] == b[j]
      d += 1
    end
  end
end
puts c
puts d