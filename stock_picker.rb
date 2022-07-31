def stock_picker(stock_price_array)
    buy = 0
    sell = 0
    current_highest = 0
    stock_price_array.each_with_index do |price, first_index|
        for second_index in (first_index + 1...stock_price_array.length)
            if stock_price_array[second_index] - stock_price_array[first_index] > current_highest
                sell = second_index
                buy = first_index
                current_highest = stock_price_array[second_index] - stock_price_array[first_index]
            else next
            end
        end
    end
[buy, sell]
end