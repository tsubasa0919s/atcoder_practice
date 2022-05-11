n = gets.to_i
l = gets.chomp.split.map(&:to_i)
c = 0

n.times do |i|
  ((i+1)...n).each do |j|
    ((j+1)...n).each do |k|
      next if l[i] == l[j] or l[j] == l[k] or l[i] == l[k]
      if l[i] + l[j] > l[k] and l[j] + l[k] > l[i] and l[k] + l[i] > l[j]
        c += 1
      end
    end
  end
end
puts c