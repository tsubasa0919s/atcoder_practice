N, W = gets.split(" ").map(&:to_i)

arr_w = []
arr_v = []

arr_v = [*1..N]
arr_w = gets.split(" ").map(&:to_i)

max_cost = 0
dp = Hash.new
dp[0] = 0

N.times do |ind|
  dp_tmp = dp.clone

  dp.each do |key, value|
    total_key = key + arr_w[ind]
    total_value = value + arr_v[ind]

    unless dp_tmp[total_key] = nil
      dp_tmp[total_key] = total_value
    end

    if W >= total_key && total_key > max_cost
      max_cost = total_key
    end
  end

  dp = dp_tmp
end

p max_cost