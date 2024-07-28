# compares opportunity cost of another stock to current holdings
def should_i_buy(opportunityCost, currentProfit)
  return opportunityCost > currentProfit
end

# picks the best days to buy and sell stock given an array of prices representing a day
def stock_picker(stockArr)
  profit = 0
  days = []
  stockArr.each_with_index {|i, index| 
    for j in (index+1..stockArr.length-1)
      diff = (i - stockArr[j])*-1
      if should_i_buy(diff,profit) 
        profit = diff
        days = [index,j]
      end
    end
  }
  p days
end

# MAIN
stock_picker([17,3,6,9,15,8,6,1,10])