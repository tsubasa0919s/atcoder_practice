def dfs(x, y, c, b)
  b[x][y] = "x"
  
  dx = [1, -1, 0, 0]
  dy = [0, 0, 1, -1]
  
  d = 0

  4.times do |i|
    if b[x+dx[i]][y+dy[i]] == "o"
      d += dfs(x+dx[i], y+dy[i], c+1, b)
      d += 1
    end
  end
  return d
end

a = [("x" * 12).split("")]
a += 10.times.map{["x"] +gets.chomp.split("") + ["x"]}
a += [("x" * 12).split("")]

c = 0
10.times do |i|
  10.times do |j|
    c += 1 if a[i+1][j+1] == "o"
  end
end

10.times do |i|
  10.times do |j|
    b = a.each.map{|k| k.clone}
    d = c
    if b[i+1][j+1] != "o"
      b[i+1][j+1] = "o"
      d += 1
    end
    if dfs(i+1, j+1, 1, b) + 1 == d
      puts "YES"
      exit
    end
  end
end
puts "NO"
