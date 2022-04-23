n = gets.to_i
a = gets.chomp.split.map(&:to_i)

h = Array.new(n, 4)

a.each do |i|
  h[i - 1] -= 1
end
n.times do |i|
  if h[i] == 1
    puts i + 1
    exit
  end
end