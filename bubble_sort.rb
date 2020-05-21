def bubble_sort(array)
  array.length.times do
    for i in 0..array.length-2
      if array[i] >= array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
#returns a sorted array 
  return array
end

bubble_sort([4,3,78,2,0,2])
