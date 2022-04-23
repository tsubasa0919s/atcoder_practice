a, b, k = gets.split(" ").map(&:to_i)

1000000000.times do |i|
  if b <= a
    p i
    exit
  end
  a = a * k
end