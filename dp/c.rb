n = gets.to_i
a = n.times.map{gets.chomp.split.map(&:to_i)}

d = Array.new(n).map{Array.new(3, 0)}

d[0] = a[0]

(n-1).times do |i|
  3.times do |j|
    3.times do |k|
      if j != k
        dd = d[i][j] + a[i+1][k]
        d[i+1][k] = dd if d[i+1][k] < dd
      end
    end
  end
end

puts d[n-1].max