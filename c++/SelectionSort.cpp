#include <iostream>
#include <vector>

template <typename T>
void selectionSort(std::vector<T> &arr)
{
    int n = arr.size();
    for (int i = 0; i < n - 1; i++)
    {
        int minIndex = i;
        for (int j = i + 1; j < n; j++)
        {
            if (arr[j] < arr[minIndex])
            {
                minIndex = j;
            }
        }
        if (minIndex != i)
        {
            std::swap(arr[i], arr[minIndex]);
        }
    }
}

int main()
{
    std::vector<int> numbers = {64, 25, 12, 22, 11};
    selectionSort(numbers);

    for (const int &num : numbers)
    {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}
