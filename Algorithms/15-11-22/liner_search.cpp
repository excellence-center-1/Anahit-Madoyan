#include <iostream>
using namespace std;

int liner_search(int array[], int len, int value){
	int i;
    for(int i=0; i < len; i++){
    	if (array[i] == value){
        	return i;
        }
    }
   return -1;
}
int main(){
	int array[]={5, 4, 9, 8, 6, 3, 2};
    int len = sizeof(array)/sizeof(array[0]);
    int value;
    cout << "Enter the number: ";
    cin >> value;
    int result = liner_search(array,len,value);
    	if (result != -1){ 
            cout << "The index is: " << result;
        }else{
                cout << "The number is not found!";
            }
}
