func selectionSort<T: Comparable>(_ arr: inout [T]) {
    for i in 0..<arr.count - 1 {
        var minIndex = i
        for j in i+1..<arr.count {
            if arr[j] < arr[minIndex] {
                minIndex = j
            }
        }
        if minIndex != i {
            arr.swapAt(i, minIndex)
        }
    }
}

var numbers = [64, 25, 12, 22, 11]
selectionSort(&numbers)
print(numbers) // [11, 12, 22, 25, 64]