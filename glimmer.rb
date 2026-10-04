def stock_picker(main_arr)

  profit_arr = Array.new
  
  main_arr.each_with_index do |item, index|
    unless item == main_arr.last
      profit_arr.push(main_arr.drop(index + 1).max - item)
      
    else
      break # impossible to get the best profit if you buy on the last day
    end
  end

  p profit_arr
  best_profit = profit_arr.max
  best_buy_index = profit_arr.find_index(best_profit)
  best_sell_index = main_arr.find_index(main_arr[best_buy_index] + best_profit)
  
  p [best_buy_index, best_sell_index]
  [best_buy_index, best_sell_index]

end

stock_picker([17,3,6,9,15,8,6,1,10])