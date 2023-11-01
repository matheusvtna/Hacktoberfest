def insertion_sort(arr)
    1.upto(arr.length - 1) do |i|
      key = arr[i]
      j = i - 1
      while j >= 0 && key < arr[j]
        arr[j + 1] = arr[j]
        j -= 1
      end
      arr[j + 1] = key
    end
  end
  
  # Exemplo de uso:
  arr = [38, 27, 43, 3, 9, 82, 10]
  insertion_sort(arr)
  puts arr
  