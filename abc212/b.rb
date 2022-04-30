x = gets.chomp.split("").map(&:to_i)

if x.uniq.length == 1
  puts "Weak"
  exit
end

f = true
3.times do |i|
  if (x[i] + 1) % 10 != x[i + 1] % 10
    f = false
  end
end

if f == true
  puts "Weak"
else
  puts "Strong"
end