a, b = gets.split(" ").map(&:to_i)
c, d = gets.split(" ").map(&:to_i)


if (a - c).abs + (b - d).abs == 0
  puts 0
  return
end

if a - c  == b - d
  puts 1
  return
end

if (a - c).abs + (b - d).abs <= 3
  puts 1
  return
end

ac = a - c
bd = b - d


aa = a - ac
bb = b - ac

if (aa - c).abs + (bb - d).abs <= 3
  puts 2
  return
end

if aa - bb == 0
  puts 2
  return
end

aa = a - bd
bb = b - bd

if (aa - c).abs + (bb - d).abs <= 3
  puts 2
  return
end

if aa - bb == 0
  puts 2
  return
end

puts 3