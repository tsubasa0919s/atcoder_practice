n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

$seg_len = 1 << 19
$seg = Array.new($seg_len * 2, 0)

def add(i, v)
  i += $seg_len
  $seg[i] += v
  while true
    i /=2
    if i == 0
      break
    end
    $seg[i] = $seg[i * 2] + $seg[i * 2 + 1]
  end
end

def sum(l, r)
  l += $seg_len
  r += $seg_len
  
  s = 0
  while l < r
    if l % 2 == 1
      s += $seg[l]
      l += 1
    end
    l /= 2
    
    if r % 2 == 1
      s += $seg[r - 1]
      r -= 1
    end
    r /= 2
  end
  
  return s
end

a.length.times do |i|
  add(i, a[i])
end

q.times do |i|
  c, l, r = gets.chomp.split.map(&:to_i)
  if c == 0
    add(l, r)
  else
    puts sum(l, r)
  end
end