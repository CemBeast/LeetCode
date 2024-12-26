//
//  125ValidPalindrome.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 12/26/24.
//

#include <iostream>  // For input/output (optional for testing)
#include <string>    // For std::string
#include <cctype>    // For std::isalnum and std::tolower
using namespace std; // Simplifies usage of standard library classes

class Solution {
public:
    bool isPalindrome(string s) {
        string filtered;
        for (char c : s) {
            if (isalnum(c)) {
                filtered += tolower(c);
            }
        }
        int r = filtered.size() - 1;
        for (int i = 0; i < filtered.size(); i++)
        {
            if (filtered[i] != filtered[r])
            {
                return false;
            }
            r--;
        }
        return true;
    }
};
