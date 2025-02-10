//
//  3174ClearDigits.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/10/25.
//

#include <iostream>
#include <vector>
#include <string>
#include <cctype>

using namespace std;

class Solution {
public:
    string clearDigits(string s) {
        string res = "";
        vector<int> marked;
        for (int i = 0; i < s.size(); i++)
        {
            if (!isdigit(s[i]))
            {
                res += s[i];
            }
            else if (!res.empty())
            {
                res.pop_back();
            }
        }
        return res;
    }
};
