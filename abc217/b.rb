n = gets.to_i
h = Hash.new([])

n.times do |i|
  s, t = gets.chomp.split(" ")
  if h.has_key?(s + " " + t)
    puts "Yes"
    return
  end 
  h[s + " " + t] = 1
end

puts "No"