h, w = gets.split(" ").map(&:to_i)

d = []
# i * h + w

h.times do |i|
  d.append(gets.chomp.split(""))
end

c = 0

d = d.flatten()

(h*w).times do |i|
  i_h = i / w
  j_w = i % w 
  
  
  next if j_w + 2> w
  break if i_h + 2 > h

  if d[i] == '.' && d[i+1] == '.' && d[i+w] == '.' && d[i+w+1] == '#'
    c += 1
  end
  if d[i] == '.' && d[i+1] == '#' && d[i+w] == '.' && d[i+w+1] == '.'
    c += 1
  end
  if d[i] == '.' && d[i+1] == '.' && d[i+w] == '#' && d[i+w+1] == '.'
    c += 1
  end
  if d[i] == '#' && d[i+1] == '.' && d[i+w] == '.' && d[i+w+1] == '.'
    c += 1
  end
  if d[i] == '#' && d[i+1] == '#' && d[i+w] == '#' && d[i+w+1] == '.'
    c += 1
  end
  if d[i] == '#' && d[i+1] == '.' && d[i+w] == '#' && d[i+w+1] == '#'
    c += 1
  end
  if d[i] == '#' && d[i+1] == '#' && d[i+w] == '.' && d[i+w+1] == '#'
    c += 1
  end
  if d[i] == '.' && d[i+1] == '#' && d[i+w] == '#' && d[i+w+1] == '#'
    c += 1
  else
    
  end
end

puts c