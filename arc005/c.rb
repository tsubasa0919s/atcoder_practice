h, w = gets.chomp.split.map(&:to_i)
s = h.times.map{gets.chomp.split("")}
d = Array.new(h).map{Array.new(w,-1)}


q = []

gx = 0
gy = 0
h.times do |i|
  j = s[i].index("s")
  k = s[i].index("g")
  if j
    q << [i, j]
    d[i][j] = 0
  end
  if k
    gx = i
    gy = k
  end
end

dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

while q.length != 0
  x, y = q.shift
  4.times do |i|
    nx = x + dx[i]
    ny = y + dy[i]
    next if nx < 0 || h <= nx || ny < 0 || w <= ny
    next if d[nx][ny] != -1
    
    if s[nx][ny] == "#"
      d[nx][ny] = d[x][y] + 1
      q << [nx, ny]
    else
      d[nx][ny] = d[x][y]
      q.prepend([nx, ny])
    end
  end
end

if d[gx][gy] <= 2
  puts "YES"
else
  puts "NO"
end