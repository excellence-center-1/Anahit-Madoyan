#include <iostream>
using namespace std;

int binarySearch(int arr[], int, int, int);
int exponentialSearch(int arr[], int arr_size, int search){
	if (arr[0] == search){
		return 0;
	}
	int i = 1;
	while (i < arr_size && arr[i] <= search)
		i = i*2;
		
	return binarySearch(arr, i/2, min(i, arr_size-1), search);
    
}


int binarySearch(int arr[], int l, int r, int search)
{
	if (r >= l)
	{
		int mid = l + (r - l)/2;

	
		if (arr[mid] == search){
			return mid;
		}
		if (arr[mid] > search){
			return binarySearch(arr, l, mid-1, search);
		}
	
		return binarySearch(arr, mid+1, r, search);
	}

	
	return -1;
}
int main(){
    int n;
    cout << "Enter the number of elements: ";
    cin >>n;
    int arr[n];
    cout << "Enter the elements: ";
    for (int i=0; i<n; i++){
        cin >> arr[i];
    }
    int search;
    cout << "Enter the element to search: ";
    cin >> search;
    int x = exponentialSearch(arr, n, search);
    if (x != -1){
        cout << "The index is " << x;
    }else{
        cout << "Element is not present in array.";
    }
return 0;
}



