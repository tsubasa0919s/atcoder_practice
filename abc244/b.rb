dx = 1
dy = 0

x = 0
y = 0

n = gets.to_i
t = gets.chomp.split("").each do |s|
  if s == "S"
    x += dx
    y += dy
  else
    if dx == 1 and dy == 0
      dx = 0
      dy = -1
    elsif dx == 0 and dy == -1
      dx = -1
      dy = 0
    elsif dx == -1 and dy == 0
      dx = 0
      dy = 1
    else
      dx = 1
      dy = 0
    end
  end
end
puts "#{x} #{y}"
