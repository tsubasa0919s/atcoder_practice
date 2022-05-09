h, w = gets.chomp.split.map(&:to_i)
r, c = gets.chomp.split.map(&:to_i)

if h == 1 and w == 1
  puts "0"
  exit
end

if h == 1
  if c == 1 or c == w
    puts "1"
  else
    puts "2"
  end
  exit
end

if w == 1
  if r == 1 or r == h
    puts "1"
  else
    puts "2"
  end
  exit
end

if r == 1 or r == h
  if c == 1 or c == w
    puts "2"
  else
    puts "3"
  end
else
  if c == 1 or c == w
    puts "3"
  else
    puts "4"
  end
end