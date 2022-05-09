require 'prime'

class Integer
  def my_divisor_list
    return [] if self <= 0
    return [1] if self == 1

    prime_division.map.with_index { |(base, k), i|
      s = i.zero? ? 0 : 1
      (s..k).map { |n| base ** n }
    }.inject { |res, e| res + res.flat_map { |t| e.map { |v| t * v } } }.sort
  end
end

n = gets.to_i
puts n.my_divisor_list
