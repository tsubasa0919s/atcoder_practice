l, r = gets.chomp.split.map(&:to_i)
s = gets.chomp
s[l-1, r-l+1] = s[l-1, r-l+1].reverse
puts s