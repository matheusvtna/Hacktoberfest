def selection_sort(arr)
    n = arr.length
    for i in 0..n-2
      min_index = i
      for j in i+1..n-1
        min_index = j if arr[j] < arr[min_index]
      end
      arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
    end
  end
  
  numbers = [64, 25, 12, 22, 11]
  selection_sort(numbers)
  puts numbers.inspect # [11, 12, 22, 25, 64]
  