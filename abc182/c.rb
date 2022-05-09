c = gets.chomp.split("").map(&:to_i)
#c = n.select{|i| i % 3 != 0}

# if c.length == 0
#   puts 0
#   exit
# end

d = 0

c_del = Array.new(c.length, 0)
c.length.times do |i|
  next if c_del[i] == 1
  if c[i] % 3 == 0
    c_del[i] = 1
    next
  end
  c.length.times do |j|
    next if c_del[i] == 1 || c_del[j] == 1 || i == j
    if (c[i] + c[j]) % 3 == 0
      c_del[i] = 1
      c_del[j] = 1
      next
    end
    c.length.times do |k|
      next if c_del[i] == 1 || c_del[j] == 1 || c_del[k] == 1 || i == k || j == k
      if (c[i] + c[j] + c[k]) % 3 == 0
        c_del[i] = 1
        c_del[j] = 1
        c_del[k] = 1
        next
      end
      c.length.times do |l|
        next if c_del[i] == 1 || c_del[j] == 1 || c_del[k] == 1 || c_del[l] == 1 || i == l || j == l || k == l
        if (c[i] + c[j] + c[k] + c[l]) % 3 == 0
          c_del[i] = 1
          c_del[j] = 1
          c_del[k] = 1
          c_del[l] = 1
          next
        end
      end
    end
  end
end

puts c_del.count(0) == c.length ? -1 : c_del.count(0)