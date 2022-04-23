a, b, c = gets.chomp.split.map(&:to_i)
if c == 0
  if a - 1 >= b
    puts "Takahashi"
  else
    puts "Aoki"
  end
else
  if b - 1 >= a
    puts "Aoki"
  else
    puts "Takahashi"
  end
end