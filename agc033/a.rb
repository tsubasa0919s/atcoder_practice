#TLE +106ms

h, w = gets.chomp.split.map(&:to_i)
s = Array.new(h).map{Array.new(w)}

dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

q = []
h.times do |i|
  t = gets.chomp
  w.times do |j|
    if t[j] == "#"
      q << [i, j]
      s[i][j] = 0
    end
  end
end

while q.length != 0
  x, y = q.shift
  
  4.times do |i|
    nx = x + dx[i]
    ny = y + dy[i]
    next if nx < 0 || nx >= h || ny < 0 || ny >= w
    next if s[nx][ny] != nil
    if s[nx][ny] == nil
      s[nx][ny] = 0
      s[nx][ny] = s[x][y] + 1
      q << [nx, ny]
    end
  end
end

puts s.flatten.max