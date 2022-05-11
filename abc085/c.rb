n, m = gets.chomp.split.map(&:to_i)
(n+1).times do |x|
  (n+1).times do |y|
    z = (m - x * 10000 - y * 5000) / 1000
    if z >= 0 and x + y + z == n
      puts "#{x} #{y} #{z}"
      exit
    end
  end
end
puts "-1 -1 -1"