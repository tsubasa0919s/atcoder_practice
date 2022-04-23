n = gets.to_i
h = Hash.new(0)
n.times.map{
  h[gets.chomp] += 1
}
puts h.keys.max_by{ |k| h[k] }
