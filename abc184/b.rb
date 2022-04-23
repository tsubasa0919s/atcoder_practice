n, x = gets.split(" ").map(&:to_i)
s = gets.chomp.split("")

s.each do |i|
  if i == "o"
    x += 1
  else
    if x == 0
    else
      x -= 1
    end
  end
end

puts x