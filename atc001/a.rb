h, w = gets.chomp.split.map(&:to_i)

@c = [("#" * (w+2)).split("")]
@c += h.times.map{["#"] + gets.chomp.split("") + ["#"]}
@c += [("#" * (w+2)).split("")]

def dfs(x, y)
  @c[x][y] = "o"
  
  dx = [1, -1, 0, 0]
  dy = [0, 0, 1, -1]

  4.times do |i|
    if @c[x+dx[i]][y+dy[i]] == "g"
      return true
    elsif @c[x+dx[i]][y+dy[i]] == "."
      if dfs(x+dx[i], y+dy[i])
        return true
      end
    end
  end
  return false
end

(h+2).times do |i|
  (w+2).times do |j|
    if @c[i][j] == "s"
      if dfs(i, j)
        puts "Yes"
      else
        puts "No"
      end
      exit
    end
  end
end
