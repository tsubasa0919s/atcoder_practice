a, b, c, d = gets.split(" ").map(&:to_i)

if a*60+b <= c*60+d
  puts "Takahashi"
else
  puts "Aoki"
end