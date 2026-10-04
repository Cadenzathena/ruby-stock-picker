def stock_picker(main_arr)
  
  main_arr.each_with_index do |item, index|
    unless item == main_arr.last
      profit = main_arr.drop(index + 1).max - item
      p profit

    else
      break
    end
  end

end

stock_picker([17,3,6,9,15,8,6,1,10])