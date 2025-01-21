//
//  13RomanToInteger.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/21/25.
//

#include <iostream>
#include <string>
#include <map>
using namespace std;

class Solution {
public:
    int romanToInt(string s) {
        map<char, int> romanToInt = {
        {'I', 1},
        {'V', 5},
        {'X', 10},
        {'L', 50},
        {'C', 100},
        {'D', 500},
        {'M', 1000}
        };
        int ans = 0;
        for (int i = 0; i < s.size() - 1; i++)
        {
            if(romanToInt[s[i]] < romanToInt[s[i + 1]])
            {
                ans -= romanToInt[s[i]];
            }
            else
            {
                ans += romanToInt[s[i]];
            }
        }
        return ans + romanToInt[s[s.size() - 1]];
    }
};
