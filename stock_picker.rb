def stock_picker(stock)
    buy_date = 0, sell_date = 0, max = 0
    i = 0
    
    while i < stock.size do 
        x = i + 1
        while x < stock.size do
            if stock[x] - stock[i] > max
                buy_date = i
                sell_date = x
                max = stock[x] - stock[i]
            end
        x += 1
        end
        i += 1
    end
    
    puts "#{buy_date},#{sell_date}"
end

stock_picker([17,3,6,9,15,8,6,1,10])