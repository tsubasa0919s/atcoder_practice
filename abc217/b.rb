a = ["ABC", "ARC", "AGC", "AHC"]
3.times do
  s = gets.chomp
  a = a.delete_if{_1 == s}
end
puts a
