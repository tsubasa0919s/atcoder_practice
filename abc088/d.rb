h, w = gets.chomp.split.map(&:to_i)
s = [["#"] * (w+2)]
s += h.times.map{["#"] + gets.chomp.split("") + ["#"]}
s += [["#"] * (w+2)]
s[1][1] = "#"

prev_path = Array.new(h+2).map{Array.new(w+2)}
dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

q = []
q.push([1, 1])

while q.length != 0
  x, y = q.shift
  
  4.times do |i|
    nx = x + dx[i]
    ny = y + dy[i]
    if  s[nx][ny] == "#" or s[nx][ny] == "o" 
      next
    elsif nx == h and ny == w
      q = []
      prev_path[nx][ny] = [x, y]
      break
    elsif s[nx][ny] == "."
      s[nx][ny] = "o"
      prev_path[nx][ny] = [x, y]
      q.push([nx, ny])
    end
  end
end

x, y = h, w

if prev_path[x][y] == nil
  puts -1
  exit
end

s[x][y] = "#"
while !(x == 1 and y == 1)
  x, y = prev_path[x][y]
  s[x][y] = "#"
end

d = 0
h.times do |i|
  d += s[i+1].count(".") + s[i+1].count("o")
end

puts d