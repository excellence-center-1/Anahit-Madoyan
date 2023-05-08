#include <iostream>
#include <stack>
#include <cstdlib>
using namespace std;
 
class Queue
{
    stack<int> s1, s2;
 
public:
    void enqueue(int data)
    {
        while (!s1.empty())  
        {
            s2.push(s1.top());
            s1.pop();
        }

        s1.push(data);
 
        while (!s2.empty())
        {
            s1.push(s2.top());
            s2.pop();
        }
    }
    int dequeue()
    {
        if (s1.empty())
        {
            cout << "Stack is empty";
            exit(0);
        }
        int top = s1.top();
        s1.pop();
        return top;
    }
};
 
int main()
{
    int keys[] = { 1, 2, 3, 4, 5 };
    Queue q;
 
    for (int key: keys) {
        q.enqueue(key);
    }
 
    cout << q.dequeue() << endl;    
    cout << q.dequeue() << endl;    
    cout << q.dequeue() << endl;    
    cout << q.dequeue() << endl;    
    cout << q.dequeue() << endl;    
    
    return 0;
}


