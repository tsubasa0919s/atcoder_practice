x, y, r = gets.split(" ").map(&:to_i)

c = 0
(-5000..5000).each do |i|
  (-5000..5000).each do |j|
    if x * x + y * y  <= r
      c += 1 
    end
  end
end
puts c