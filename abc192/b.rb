s = gets.chomp.split("")

flag = true
s.each_with_index do |t, i|
  if i % 2 == 0 && t != t.downcase
    flag = false
  end
  if i % 2 == 1 && t != t.upcase
    flag = false
  end
  
end

if flag
  puts "Yes"
else
  puts "No"
end