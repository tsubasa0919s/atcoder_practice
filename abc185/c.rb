l = gets.to_i

dp = Array.new(201).map{Array.new(12, 0)}

dp[l-1][11] = 1

l.times do |i|
  n = l - i
  11.times do |j|
    k = 11 - j
    puts n, k
    if n > k
      dp[n][k] = dp[n - 1][k - 1] + dp[n - 1][k]
    elsif n == k
      dp[n][k] = 1
    else
      dp[n][k] = 0
    end
  end
end

p dp[l]

puts dp[l][11]

def stirling(n, k, s=true)
  if n < k
    0
  elsif n == k then 1
  elsif n == 0 then 0
  else
    stirling(n - 1, k - 1, s) + stirling(n - 1, k, s)
  end
end