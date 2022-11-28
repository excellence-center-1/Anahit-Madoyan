#include <iostream>
using namespace std;

void Print(int array[], int size){
    for (int i = 0; i < size; ++i){
        cout << array[i] << " ";
    }
   cout << endl;
}
void BubbleSort(int array[], int size){
    bool swapMade = false;
    do{
        swapMade = false;
        for (int i = 0; i < size-1; ++i){
            if (array[i] > array[i+1]){
                //int temp = array[i];
                //array[i] = array[i+1];
                //array[i+1] = temp;
                swap(array[i], array[i+1]);
                swapMade = true; 
            }
        }
    }while (swapMade == true);
}

int main(){
    const int SIZE = 7;
    int array[SIZE] = {3, 2, 7, 6, 1, 4, 5};
    Print(array, SIZE);
    BubbleSort(array, SIZE);
    Print(array, SIZE);
    
    return 0;
}

