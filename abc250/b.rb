n, a, b = gets.chomp.split.map(&:to_i)

x1 = 0
s = [".", "#"]

n.times do |i|
  a.times do |c|
    x2 = x1
    n.times do |j|
      b.times do |d|
        print s[x2]
      end
      x2 ^= 1
    end
    puts
  end
  x1 ^= 1
end