n = 1000 - gets.to_i

c = 0
c += n / 500
n %= 500
c += n / 100
n %= 100
c += n / 50
n %= 50
c += n / 10
n %= 10
c += n / 5
n %= 5
c += n

puts c