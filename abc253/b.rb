h, w = gets.chomp.split.map(&:to_i)

s = [[10000] * (w+2)]
s += h.times.map{[10000] + gets.chomp.split("") + [10000]}
s += [[10000] * (w+2)]

dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

q = []

sx = 0
sy = 0
f = false
h.times do |i|
  w.times do |j|
    if s[i+1][j+1] == "o"
      sx, sy = i+1, j+1
      f = true
      break
    end
  end
  break if f
end

s[sx][sy] = 0
q.push([sx, sy])

while q.length > 0
  x, y = q.shift
  4.times do |i|
    if s[x+dx[i]][y+dy[i]] == "o"
      puts s[x][y] + 1
      exit
    end
    if s[x+dx[i]][y+dy[i]] == "-"
      s[x+dx[i]][y+dy[i]] = s[x][y] + 1
      q.push([x+dx[i], y+dy[i]])
    end
  end
end
