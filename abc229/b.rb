c, d = gets.chomp.split
a = c.split("").map(&:to_i).reverse
b = d.split("").map(&:to_i).reverse

[a.length, b.length].min.times do |i|
  if a[i] + b[i] > 9
    puts "Hard"
    exit
  end
end
puts "Easy"


