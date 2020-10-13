def find_max_index(arr)
    return arr.find_index(arr.max)
end

def stock_picker(stock_array)
    min_index = 0
    max_index = find_max_index(stock_array)
    profit = stock_array[max_index] - stock_array[min_index]

    stock_array.each_with_index do |val, index|
        if val < stock_array[min_index] 
            if max_index >= index
                min_index = index
                profit = stock_array[max_index] - val
            else
                potential_max_index = find_max_index(stock_array.slice(index, stock_array.length)) + index 
                #have to add back index cause its a slice starting at index onwards
                potential_profit = stock_array[potential_max_index] - val
                if potential_profit > profit
                    profit = potential_profit
                    min_index = index
                    max_index = potential_max_index
                end
            end
        end
    end

    return [min_index, max_index]
end

puts stock_picker([17,3,6,9,15,8,6,1,10,19])
                
