n = gets.to_i
a = Array.new(n).map{[]}

(n-1).times do |i|
  u, v, w = gets.chomp.split.map(&:to_i)
  a[u-1] << [v-1, w]
  a[v-1] << [u-1, w]
end

@s = Array.new(n, -1)
def dfs(a, v, c)
  return if @s[v] != -1
  @s[v] = c
  a[v].each do |i, w|
    next if @s[i] != -1
    if w % 2 == 0
      dfs(a, i, c)
    else
      dfs(a, i, 1-c)
    end
  end
end

n.times do |i|
  next if @s[i] != -1
  dfs(a, i, 0)
end

n.times do |i|
  puts @s[i]
end

