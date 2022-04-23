n, m, t = gets.split(" ").map(&:to_i)
n2 = n

a = Array.new(m)
b = Array.new(m)

c = 0
m.times do |i|
  a[i], b[i] = gets.split(" ").map(&:to_i)  
  
  n = n - (a[i] - c)
  if n <= 0
    puts "No"
    return
  end
  n = n + (b[i] - a[i])
  n = n2 if n2 < n
    
  c = b[i]
end

n = n - (t - c)

if n <= 0
  puts "No"
else
  puts "Yes"
end

