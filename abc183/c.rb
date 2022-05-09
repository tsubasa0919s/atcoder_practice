$n, k  = gets.split(" ").map(&:to_i)
t = []

$n.times do |i|
  t.append(gets.split(" ").map(&:to_i))
end

a = [*1..($n-1)].permutation($n-1).to_a

count = 0

a.each do |b|
  l = 0
  c = t[0][b[0]]
  ($n-2).times do |j|
    c += t[b[j]][b[j + 1]]
    l = j + 1
  end
  c += t[b[l]][0]
  count += 1 if c == k
end
puts count

# $dp = Array.new(1 << $n) { Array.new($n,0) }

# def rec(s, v)
#   if $dp[s][v] >= 0
#     return $dp[s][v]
#   end
#
#   if s == (1 << $n) - 1 && v == 0
#     $dp[s][v] = 0
#     return 0
#   end
#
#   res = 999999
#   $n.times do |i|
#     if s >> i & 1 == 0
#       r = rec(s | 1 << i, i) + $d[v][u])
#       res = res > r ? r : res
#     end
#   end
#
#   $dp[s][v] = res
#   return res
# end