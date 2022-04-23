n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
a.each do |_a|
  h[_a] += 1
end

b.each do |_b|
  h[_b] -= 1
  if h[_b] < 0
    puts "No"
    exit
  end
end

puts "Yes"