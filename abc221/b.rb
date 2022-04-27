s = gets.chomp.split("")
t = gets.chomp.split("")

if s == t
  puts "Yes"
  exit
end

(s.length-1).times do |i|
  s2 = s.clone
  s2[i], s2[i+1] = s[i+1], s[i]
  if s2 == t
    puts "Yes"
    exit
  end
end
puts "No"