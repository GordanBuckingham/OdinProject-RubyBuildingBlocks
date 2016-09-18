def stock_picker(stock_prices_arr)
	raise TypeError unless stock_prices_arr.is_a? Array
	
	best_days = [0,1]
	temp_profit = stock_prices_arr[1] - stock_prices_arr.first
	stock_prices_arr.each_with_index do |stock_price, buy_day|
		(buy_day...stock_prices_arr.length).each_with_index do |sell_day| # compare with remaining days in array
			sell_price = stock_prices_arr[sell_day]
			if (sell_price - stock_price) > temp_profit
		        temp_profit = sell_price - stock_price
		        best_days = [buy_day, sell_day]
			end
		end
	end	
	return best_days
end


puts stock_picker([17,3,6,9,15,8,6,1,10])
puts stock_picker([17,3,6,9,15,8,6,1,0])
puts stock_picker([10, 1, 9, 100])