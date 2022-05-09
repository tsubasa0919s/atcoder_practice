ONE = '1'.freeze
MOD = 998244353

def inv(x)
  res = 1
  beki = x
  (MOD - 2).to_s(2).reverse.chars do |digest|
    res = (beki * res) % MOD if digest == ONE
    beki = (beki * beki) % MOD
  end
  return res
end

def fact(s, e)
  return (s..e).reduce(1) { |r, i| (r * i) % MOD }
end

def nCk(n, k)
  return (fact(1, n) * inv(fact(1, k)) * inv(fact(1, n - k) % MOD)) % MOD
end

n, m, k = gets.split(" ").map(&:to_i)
c = n * (n + 1) / 2

puts nCk(c, n)


