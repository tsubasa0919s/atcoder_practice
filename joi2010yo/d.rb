n =gets.to_i
k = gets.to_i
a = n.times.map{gets.to_i}

perm = a.permutation(k)

s = []
perm.each do |pe|
  c = ""
  k.times do |i|
    c += pe[i].to_s
  end
  s << c
end
puts s.uniq.length