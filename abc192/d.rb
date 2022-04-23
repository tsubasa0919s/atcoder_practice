x = gets.chomp
m = gets.to_i

x_a = x.split("").map(&:to_i)
x_size = x.length

x_max = x_a.max

m_l = 2
m_r = m
m_m = ((m_l + m_r) / 2).to_i

while true
  if m_l > m_r
    break
  end
  
  s = 0
  x_size.times do |i|
    s += x_a[x_size - i - 1] * (m_m ** i)
  end
  if s == m
    break
  elsif s > m
    m_r = m_m - 1
  else
    m_l = m_m + 1
  end
  m_m = ((m_l + m_r) / 2).to_i
end

if x_size == 1
  puts x_a[0] < m ? x_a[0] : 0
elsif m_m - x_max <= 0
  puts 0
else
  puts m_m - x_max
end