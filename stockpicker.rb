def stockpicker(prices)
   profit = 0
   sellhigh = 0
   buylow = 0
   dates = []
   prices.each_with_index do |price, index|
    for i in index..prices.length-1 
        if ( (prices[i] - prices[index]) > profit)
            profit = (prices[i] - prices[index])
            puts "You could make #{profit}"
            dates[0] = index
            dates[1] = i 
            buylow = prices[index]
            sellhigh = prices[i]
        end
    end
   end
puts "You bought for $#{buylow} on day #{dates[0]+1}, and sold for $#{sellhigh} on day #{dates[1]+1}, netting you a great profit of $#{profit}!!!"
end

stockpicker([17,3,6,9,15,8,6,1,10])