N, Y = gets.chomp.split.map(&:to_i)

(N+1).times do |x|
  (N+1-x).times do |y|
    z = N - x - y
    if x * 10000 + y * 5000 + z * 1000 == Y
      puts "#{x} #{y} #{z}"
      exit
    end
  end
end

puts "-1 -1 -1"