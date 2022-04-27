n, q = gets.chomp.split.map(&:to_i)

class UnionFind
  def initialize(n)
    @a = Array.new(n, -1)
    @r = Array.new(n, 1)
  end
  
  def find(x)
    if @a[x] == -1
      return x
    else
      @a[x] = find(@a[x])
      return @a[x]
    end
  end
  
  def unite(x, y)
    x = find(x)
    y = find(y)
    if x == y
      return
    else
      if(@r[x] > @r[y])
        @a[y] = x
      elsif @r[x] == @r[y]
        @r[y] += 1
        @a[x] = y
      else
        @a[x] = y
      end
    end
  end
end

s = ""
uf = UnionFind.new(n)
q.times do |i|
  t, u, v = gets.chomp.split.map(&:to_i)
  if t == 0
    uf.unite(u, v)
  else
    if uf.find(u) == uf.find(v)
      puts 1
    else
      puts 0
    end
  end
end