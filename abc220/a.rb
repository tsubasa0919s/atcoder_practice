a, b, c = gets.chomp.split.map(&:to_i)

10000.times do |i|
  if a <= c * i and c * i <= b
    puts c * i
    exit
  elsif b < c * i
    puts -1
    exit
  end
end