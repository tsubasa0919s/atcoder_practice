u = [gets.chomp.bytes, gets.chomp.bytes].transpose
d = []
u.each do |s, t|
   d << (s - t) % 26
end
if d.all?{|i| i == d[0]}
  puts "Yes"
else
  puts "No"
end