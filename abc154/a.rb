a = Hash.new()
s, t = gets.chomp.split
a[s], a[t] = gets.chomp.split.map(&:to_i)
a[gets.chomp] -= 1
puts "#{a[s]} #{a[t]}"


