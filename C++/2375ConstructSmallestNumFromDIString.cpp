#include <iostream>
#include <stack>

using namespace std;

class Solution {
public:
    string smallestNumber(string pattern) {
        string res = "";
        stack<int> s;
        for(int i = 0; i <= pattern.size(); i++)
        {
            s.push(i + 1);
            if (pattern[i] == 'I' || i == pattern.size())
            {
                while(!s.empty())
                {
                    res += (s.top() +'0');
                    s.pop();
                }
            }
        }
        return res;
    }
};