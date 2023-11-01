func insertionSort<T: Comparable>(_ arr: inout [T]) {
    for i in 1..<arr.count {
        let key = arr[i]
        var j = i - 1
        while j >= 0 && key < arr[j] {
            arr[j + 1] = arr[j]
            j -= 1
        }
        arr[j + 1] = key
    }
}

// Exemplo de uso:
var arr = [38, 27, 43, 3, 9, 82, 10]
insertionSort(&arr)
print(arr)
