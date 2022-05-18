r, c = gets.chomp.split.map(&:to_i)

sx, sy = gets.chomp.split.map(&:to_i)
gx, gy = gets.chomp.split.map(&:to_i)

c = [["#"] * r]
c += r.times.map{["#"] + gets.chomp.split("") + ["#"]}
c += [["#"] * r]

dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

q = []

c[sx][sy] = 0
q.push([sx, sy])

while q.length > 0
  x, y = q.shift
  4.times do |i|
    if x+dx[i] == gx and y+dy[i] == gy
      puts c[x][y] + 1
      exit
    end
    if c[x+dx[i]][y+dy[i]] == "."
      c[x+dx[i]][y+dy[i]] = c[x][y] + 1
      q.push([x+dx[i], y+dy[i]])
    end
  end
end
