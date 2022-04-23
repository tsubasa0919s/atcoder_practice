h = Array.new(2001, 0)
n = gets.to_i
gets.chomp.split.map(&:to_i).each do |i|
  h[i] += 1
end
2000.times do |i|
  if h[i] == 0
    puts i
    exit
  end
end
puts 2000

