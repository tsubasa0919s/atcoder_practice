h = Hash.new(0)
n = gets.to_i
s = n.times.map{gets.chomp.split}
n.times do |i|
  h[s[i][0]] += 1
  h[s[i][1]] += 1 if s[i][0] != s[i][1]
end
n.times do |i|
  if h[s[i][0]] > 1 and h[s[i][1]] > 1
    puts "No"
    exit
  end
end
puts "Yes"


