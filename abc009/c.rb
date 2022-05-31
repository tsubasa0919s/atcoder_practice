n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp.split("")
s_ord = s.clone

n.times do |i|
  left = i
  ((i+1)..(n-1)).each do |j|
    if s[left] > s[j]
      sd = s.clone
      sd[i], sd[j] = sd[j], sd[i]
      diff = 0
      n.times do |c|
        diff += 1 if s_ord[c] != sd[c]
      end
      if diff <= k
        left = j
      end
    end
  end
  s[i], s[left] = s[left], s[i]
end
puts s.join