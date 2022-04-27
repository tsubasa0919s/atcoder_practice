h, w = gets.chomp.split.map(&:to_i)
a = h.times.map{gets.chomp.split.map(&:to_i)}

h.times do |i1|
  (i1+1).times do |i2|
    w.times do |j1|
      (j1+1).times do |j2|
        if a[i1][j1] + a[i2][j2] > a[i2][j1] + a[i1][j2]
          puts "No"
          exit
        end
      end
    end
  end
end
puts "Yes"