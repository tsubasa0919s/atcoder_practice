class Array
  def count2
    k = Hash.new(0)
    self.each{|x| k[x] += 1 }
    return k
  end
end


s = gets.split("").map(&:to_i)
x = s.count2()
x[0] = 0

100.times do |i|
  next if i % 8 != 0 || i < 8 || i % 10 == 0
  
  z = i / 2 % 100
  next if i % 2 != 0 || z % 4 != 0
  
  x_ = x.clone
  a = i / 100
  b = i % 100 / 10
  c = i % 10
  
  x_[a] -= 1
  x_[b] -= 1
  x_[c] -= 1
  x_[0] = 0
  
  if x_.values.count{|y| y < 0} > 0
    
  else
    puts 'Yes'
    return
  end
end
puts 'No'
