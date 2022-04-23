s1 = gets
s2 = gets

if s1[0] == s2[1] and s1[1] == s2[0] and s1[0] != s1[1]
  puts "No"
else
  puts "Yes"
end