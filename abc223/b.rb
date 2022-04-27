s = gets.chomp
smax = s
smin = s
s.length.times do |i|
  s = s.split("").rotate(1).join()
  smax = s if s > smax
  smin = s if s < smin
end
puts smin, smax