n = gets.to_i
a = Hash.new([])
s = 0

if n > 3 && n < 8
  puts n - 1
  return
elsif n <= 3
  puts n
  return
end

n.times do |i_|
  i = i_ + 2
  break if i ** 2 > n
  
  n.times do |j_|
    j = j_ + 2
    break if i ** j > n
    
    if a.has_key?(i**j) == false && i ** j <= n
      s += 1
      a[i ** j] = i ** j
    end
  end
end

puts n - s