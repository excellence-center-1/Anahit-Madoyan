#include <iostream>
using namespace std;
int binary_search(int array[], int value, int low, int hight)
{
    while(low < hight)
    {
        int mid = low +(hight -low)/2;
        if (array[mid] == value)
        {
            return mid;
        }
        if (array[mid] < value)
        {
            low = mid + 1;
        }else{
            hight = mid -1;
        }
    }
     return -1;
}
int main()
{
    int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int len = sizeof(array) / sizeof(array[0]);
    int value;
    cout << "Enter the number: ";
    cin >> value;
    int result = binary_search(array, value, 0, len - 1);
    if (result == -1)
    {
       cout << "The number is not found!";
    }else{
        cout << "The index is " << result;
    }

}
