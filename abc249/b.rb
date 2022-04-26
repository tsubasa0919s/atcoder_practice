s = gets.chomp
if s == s.downcase or s == s.upcase
  puts "No"
  exit
end

if s.length != s.split("").uniq.length
  puts "No"
else
  puts "Yes"
end