#include <iostream>
using namespace std;

void insertionSort(int arr[], int n)
{
	int i, key, j;
	for (i = 1; i < n; i++)
	{
		key = arr[i];
		j = i;

		while (j > 0 && arr[j-1] > key)
		{
			arr[j] = arr[j - 1];
			j = j - 1;
		}
		arr[j] = key;
	}
}

void printArray(int arr[], int n)
{
	int i;
	for (i = 0; i < n; i++)
		cout << arr[i] << " ";
		cout << endl;
	}


int main()
{
	int arr[] = { 12, 11, 13, 5, 6 };
	int N = sizeof(arr) / sizeof(arr[0]);
	printArray(arr, N);

	insertionSort(arr, N);
	printArray(arr, N);

	return 0;
}


