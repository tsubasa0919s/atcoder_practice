a = gets.chomp.split("").map(&:to_i)

(1<<3).times do |i|
  c = a[0]
  3.times do |j|
    if i[j] == 0
      c += a[j+1]
    else
      c -= a[j+1]
    end
  end
  if c == 7
    print a[0]
    3.times do |j|
      if i[j] == 0
        print "+"
      else
        print "-"
      end
      print a[j+1]
    end
    puts "=7"
    exit
  end
end