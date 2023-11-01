func mergeSort<T: Comparable>(_ arr: [T]) -> [T] {
    guard arr.count > 1 else {
        return arr
    }
    
    let mid = arr.count / 2
    let leftArray = Array(arr[0..<mid])
    let rightArray = Array(arr[mid..<arr.count])
    
    return merge(mergeSort(leftArray), mergeSort(rightArray))
}

func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
    var result: [T] = []
    var leftIndex = 0
    var rightIndex = 0
    
    while leftIndex < left.count && rightIndex < right.count {
        if left[leftIndex] < right[rightIndex] {
            result.append(left[leftIndex])
            leftIndex += 1
        } else {
            result.append(right[rightIndex])
            rightIndex += 1
        }
    }
    
    result.append(contentsOf: left[leftIndex...])
    result.append(contentsOf: right[rightIndex...])
    
    return result
}

// Exemplo de uso:
let arr = [38, 27, 43, 3, 9, 82, 10]
let sortedArr = mergeSort(arr)
print(sortedArr)
