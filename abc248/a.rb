s = gets

10.times do |i|
  unless s.index(i.to_s)
    print i
    exit
  end
end