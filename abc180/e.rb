n = gets.to_i

x = []
c = Array.new(n).map{Array.new(n,10000000)}
n.times {x << gets.chop.split.map(&:to_i)}

n.times do |i|
  n.times do |j|
    if i != j
      c[i][j] = (x[j][0] - x[i][0]).abs + (x[j][1] - x[i][1]).abs
    end
  end
end

