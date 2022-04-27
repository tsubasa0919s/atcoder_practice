q = gets.chomp.split.map(&:to_i)
s = ""
q.each do |i|
  s <<= (i + "a".ord - 1).chr
end
puts s