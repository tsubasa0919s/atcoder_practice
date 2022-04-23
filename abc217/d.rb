n, m = gets.split(" ").map(&:to_i)

c1 = false
c2 = false

m.times do |i|
  k = gets.to_i  
  a = gets.split(" ").map(&:to_i)
  (k-1).times do |j|
    if a[j] >= a[j+1]
      c1 = true
    end
    if a[j] <= a[j+1]
      c2 = true
    end
  end
end

if c1 && c2
  puts "No"
else
  puts "Yes"
end