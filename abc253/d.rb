n, a, b = gets.chomp.split.map(&:to_i)

if a == b
  if a == n
    puts n * (n - 1) / 2
  else
    sum = n * (n + 1) / 2

    c = n / a
    sum_a = a * c * (c + 1) / 2
  
    puts sum - sum_a
  end
else
  sum = n * (n + 1) / 2

  c = n / a
  sum_a = a * c * (c + 1) / 2

  d = n / b
  sum_b = b * d * (d + 1) / 2

  ab = a.lcm(b)
  e = n / ab
  sum_ab = ab * e * (e + 1) / 2

  puts sum - (sum_a + sum_b - sum_ab)
end