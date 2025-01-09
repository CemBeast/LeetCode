//
//  155MinStack.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/9/25.
//
#include <iostream>  // For input/output (if needed for testing)
#include <stack>     // For std::stack

using namespace std;

class MinStack {
private:
    stack<int> s;
    stack<int> minStack;

public:
    
    MinStack() {
        
    }
    
    void push(int val) {
        s.push(val);
        if (minStack.empty() || val <= minStack.top())
        {
            minStack.push(val);
        }
    }
    
    void pop() {
        if(!s.empty())
        {
            if (s.top() == minStack.top())
            {
                minStack.pop();
            }
            s.pop();
        }
    }
    
    int top() {
        if(!s.empty())
        {
            return s.top();
        }
        return -1;
    }
    
    int getMin() {
        if (!minStack.empty())
        {
            return minStack.top();
        }
        else
        {
            return 0;
        }
    }
};

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack* obj = new MinStack();
 * obj->push(val);
 * obj->pop();
 * int param_3 = obj->top();
 * int param_4 = obj->getMin();
 */
