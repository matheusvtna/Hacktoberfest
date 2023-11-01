def merge_sort(arr)
    return arr if arr.length <= 1
  
    middle = arr.length / 2
    left = arr[0...middle]
    right = arr[middle..-1]
  
    left = merge_sort(left)
    right = merge_sort(right)
  
    merge(left, right)
  end
  
  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result.concat(left).concat(right)
  end
  
  # Exemplo de uso:
  arr = [38, 27, 43, 3, 9, 82, 10]
  sorted_arr = merge_sort(arr)
  puts sorted_arr
  