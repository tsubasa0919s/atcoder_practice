s_d = gets.chomp
t = gets.chomp

candidate = []
(s_d.length - t.length+1).times do |i|
  s = s_d.clone
  f = true
  t.length.times do |j|
    if s[i+j] == "?" or s[i+j] == t[j]
      s[i+j] = t[j]
    else
      f = false
      break
    end
  end
  if f == true
    s.gsub!(/\?/, "a")
    candidate << s
  end
end
ans = candidate.min
if ans == nil
  puts "UNRESTORABLE"
else
  puts ans
end