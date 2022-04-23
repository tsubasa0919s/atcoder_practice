sx, sy, gx, gy = gets.split(" ").map(&:to_f)

puts ((sy * (gx - sx)) / (gy + sy) + sx).to_f