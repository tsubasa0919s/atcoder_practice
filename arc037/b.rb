n, m = gets.chomp.split.map(&:to_i)
a = Array.new(n).map{[]}

m.times do |i|
  u, v = gets.chomp.split.map(&:to_i)
  a[u-1] << v-1
  a[v-1] << u-1
end

def dfs(a, v, b)
  return false if @s[v] == 1
  @s[v] = 1
  a[v].each do |i|
    next if i == b
    return false if dfs(a, i, v) == false
  end
  return true
end

c = 0
@s = Array.new(n, 0)
n.times do |i|
  next if @s[i] == 1
  if dfs(a, i, nil)
    c += 1
  end
end
puts c
