def swap?(index_a, index_b, arr)
    return arr[index_b] && arr[index_a] > arr[index_b]
end

def bubble_sort(array)  
    for i in 0..(array.length-2)
        for j in 0..(array.length-i-2)
            if swap?(j, j + 1, array)
                array[j], array[j+1] = array[j+1], array[j]
            end
        end
    end
    return array
end


p bubble_sort([4,3,78,2,0,2])