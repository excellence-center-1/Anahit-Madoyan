#include<iostream>
using namespace std;

void shell_sort(int array[], int length){
    int gap = length / 2;
    while(gap > 0){
        int j = 0;
        for(int i = gap; i < length; i++){
            int temp = array[i];
            for(j = i; j >= gap && array[j - gap] > temp; j -= gap){
                array[j] = array[j - gap];
            }
            array[j] = temp;
        }
        gap = gap / 2;

    }

}

int main(){
    int array[] = {3, 4, 11, 54, 6, 30, 2, 9};
    int length = 7;
    shell_sort(array, length);
    for(int i = 0; i < length; i++){

        cout << array[i] << "    ";

    }
    return 0;

}


