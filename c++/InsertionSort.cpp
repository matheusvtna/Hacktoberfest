#include <iostream>
#include <vector>

template <typename T>
void insertionSort(std::vector<T> &arr)
{
    int n = arr.size();
    for (int i = 1; i < n; i++)
    {
        T key = arr[i];
        int j = i - 1;

        while (j >= 0 && arr[j] > key)
        {
            arr[j + 1] = arr[j];
            j--;
        }

        arr[j + 1] = key;
    }
}

int main()
{
    std::vector<int> numbers = {64, 25, 12, 22, 11};
    insertionSort(numbers);

    for (const int &num : numbers)
    {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}
