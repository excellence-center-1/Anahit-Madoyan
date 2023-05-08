#include <iostream>
using namespace std;

void heap_tree(int array[], int len, int i){
    int largest = i;
    int left = 2*i+1;
    int right = 2*i+2;
    if (left < len && array[left] > array[largest]){
        largest = left;
    }
    if (right < len && array[right] > array[largest]){
        largest = right;
    }
    if (largest != i){
        swap(array[i], array[largest]);
        heap_tree(array, len, largest);
    }
}
void heap_sort(int array[], int len){
    for (int i=len -1; i >= 0; i--){
        heap_tree(array, len, i);
    }
    for (int i=len -1; i >= 0; i--){
        swap(array[0], array[i]);
        heap_tree(array, i, 0);
    }
}
void print(int array[], int len){
    for (int i = 0; i < len; ++i){
        cout << array[i] << " ";
    }
}

int main(){
    int array[] = {6, 8, 1, 4, 10, 40, 93}; 
    int len = sizeof(array)/sizeof(array[0]);
    heap_sort(array, len);
    print(array, len);

}
