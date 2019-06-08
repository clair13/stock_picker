
def stock_picker(prices)
  max_profit = 0
  profit = 0
  best_days = []


  for i in (0..prices.size-1) do
    for j in (i+1..prices.size-1) do 
      profit = prices[j].to_i - prices[i].to_i

      if profit > max_profit && i < j
        max_profit = profit 
        best_days = [i,j]
      end
    end
  end

  return best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])