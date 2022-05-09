n, q = gets.chomp.split.map(&:to_i)

a = (0..(n+1)).to_a
b = (0..(n+1)).to_a

q.times do |i|
  x = gets.to_i
  c = b[x]
  if c == n
    a[c], a[c-1] = a[c-1], a[c]
    b[a[c]], b[a[c-1]] = b[a[c-1]], b[a[c]]
  else
    a[c], a[c+1] = a[c+1], a[c]
    b[a[c]], b[a[c+1]] = b[a[c+1]], b[a[c]]
  end
end
puts a[1..n].join(" ")