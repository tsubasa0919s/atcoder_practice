s = gets
if s[0] == s[1] and s[0] == s[2]
  puts 1
elsif s[0] == s[1] or s[0] == s[2] or s[1] == s[2]
  puts 3
else  
  puts 6
end