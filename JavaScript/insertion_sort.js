function insertionSort(arr) {
  for (let i = 1; i < arr.length; i++) {
    let key = arr[i];
    let j = i - 1;
    while (j >= 0 && key < arr[j]) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

// Exemplo de uso:
const arr = [38, 27, 43, 3, 9, 82, 10];
insertionSort(arr);
console.log(arr);
