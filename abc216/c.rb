n = gets.to_i
s = []

120.times do |i|
  if n % 2 == 0
    n = n / 2
    s[i] = "B"
  else
    n = n - 1
    s[i] = "A"
  end
  if n == 0
    puts s.reverse.join
    return
  end
end