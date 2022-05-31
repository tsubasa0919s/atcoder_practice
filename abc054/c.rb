n, m = gets.chomp.split.map(&:to_i)

if m == 0
  puts 0
  exit
end

g = Array.new(n).map{Array.new(n, 0)}

m.times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  g[a-1][b-1] = 1
  g[b-1][a-1] = 1
end

permutaion = [*1..(n-1)].permutation
c = 0

permutaion.each do |ord|
  f = 1
  ord = [0] + ord 
  (n-1).times do |i|
    if g[ord[i]][ord[i+1]] == 0
      f = 0
      break
    end
  end
  if f == 1
    c += 1 
  end
end
puts c
