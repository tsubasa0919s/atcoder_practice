h = Hash.new(0)

max = -1
min = 10 ** 9 + 1

q = gets.to_i
q.times do |i|
  a = gets.chomp.split.map(&:to_i)
  if a[0] == 1
    h[a[1]] += 1
    max = a[1] if a[1] > max
    min = a[1] if a[1] < min
  elsif a[0] == 2
    h[a[1]] -= [h[a[1]], a[2]].min
    h.delete(a[1]) if h[a[1]] == 0
    if max == a[1] and h[a[1]] == 0 or min == a[1] && h[a[1]] == 0
      min, max = h.keys.minmax
      if min.nil?
        max = -1
        min = 10 ** 9 + 1
      end
    end
  else
    puts max - min
  end
end