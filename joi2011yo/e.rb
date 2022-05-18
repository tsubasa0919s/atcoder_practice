h, w, n = gets.chomp.split.map(&:to_i)

s = [["X"] * (w+2)]
s += h.times.map{["X"] + gets.chomp.split("") + ["X"]}
s += [["X"] * (w+2)]

sx = Array.new(n+1)
sy = Array.new(n+1)

h.times do |i|
  t = s[i+1].index("S")
  if t != nil
    sy[0] = t
    sx[0] = i + 1
    s[i+1][t] = 0
  end
  n.times do |j|
    t = s[i+1].index(("1".ord+j).chr)
    if t != nil
      sy[j+1] = t
      sx[j+1] = i + 1
      s[i+1][t] = j+1
    end
  end
end


dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

d = 0
c = 0
(n+1).times do |i|
  s[sx[i]][sy[i]] = i
  q = []
  q.push([sx[i], sy[i]])
  u = Array.new(h+2).map{Array.new(w+2, 0)}
  while q.length != 0
    x, y = q.shift
    4.times do |i|
      nx, ny = x + dx[i], y + dy[i]
      if s[nx][ny] == "X"
        next
      elsif s[nx][ny] == c+1
        q = []
        c += 1
        d += u[x][y] + 1
        break
      elsif s[nx][ny] == "." or s[nx][ny] < c
        s[nx][ny] = c
        q.push([nx, ny])
      elsif s[nx][ny] > c
        q.push([nx, ny])
      end
      u[nx][ny] = u[x][y] + 1
    end
  end
end
puts d