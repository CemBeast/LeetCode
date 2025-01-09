//
//  20ValidParentheses.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/9/25.
//
#include <iostream>  // For input/output (if needed for testing)
#include <string>    // For std::string
#include <stack>     // For std::stack

using namespace std;

class Solution {
public:
    bool isValid(string s) {
        stack<char> stck;
        for (int i = 0; i < s.length(); i++)
        {
            if (s[i] == '(' || s[i] == '[' || s[i] == '{')
            {
                stck.push(s[i]);
            }
            else if (stck.empty())
            {
                return false;
            }
            else if (s[i] == ')' && stck.top() == '(')
            {
                stck.pop();
            }
            else if (s[i] == ']' && stck.top() == '[')
            {
                stck.pop();
            }
            else if (s[i] == '}' && stck.top() == '{')
            {
                stck.pop();
            }
            else
            {
                return false;
            }
        }
        return stck.empty();
    }
};
