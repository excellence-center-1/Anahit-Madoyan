#include <iostream>
#include <cmath>
using namespace std;


void printArr(int* arr, int size);
void jumpSearch(int* arr, int size, int number);


int main(){
	int n = 9;
	int* arr = new int[n];
	for(int i = 0; i < n; i++){
		arr[i] = i+12;
	}
	printArr(arr, n);
	int number;
	cout << "Write the number from array: ";
	cin >> number;
	jumpSearch(arr, n, number);

}


void printArr(int* arr, int size){
	for(int i = 0; i < size; i++){
		cout << arr[i]<< " ";
	}
}

void jumpSearch(int* arr, int size, int number){
	int step = sqrt(size);
	int i ;
	int k = step;
	for( i = 0; i < size; i+=step){
		if(arr[i] == number){
			cout << i;	
		}else  if(arr[i]>number){
			step = i;
		}else {
			step = size-1;
		} 
	}

	for(int j = k-i; j < step; j++){
		if(arr[j] == number){
			cout << "The index is: " << j;
		}
	}
}
