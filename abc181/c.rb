n = gets.to_i
a = []
b = []
c = 0
n.times do |i|
  a[i], b[i] = gets.split(" ").map(&:to_i)
end

n.times do |i|
  n.times do |j|
    break if i == j
    n.times do |k|
      break if i == k || j == k
      
      ab = Math.sqrt((a[i] - a[j]) ** 2 + (b[i] - b[j]) ** 2)
      bc = Math.sqrt((a[j] - a[k]) ** 2 + (b[j] - b[k]) ** 2)
      ac = Math.sqrt((a[i] - a[k]) ** 2 + (b[i] - b[k]) ** 2)
      
      if ab + ac == bc || ab + bc == ac || ac + bc == ab
        puts 'Yes'
        return
      end
    end
  end
end
puts 'No'