//
//  14LongestCommonPrefix.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/14/25.
//
#include <iostream>
#include <vector>
#include <string>
using namespace std;

class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
        if (strs.empty())
            return "";
        string base = strs[0];
        for(int i = 1; i < strs.size(); i++) {
            for(int j = 0; j < strs[i].size() && j < base.size(); j++) {
                if (base[j] != strs[i][j]) {
                    base = base.substr(0, j);
                    break;
                }
            }
            if (strs[i].size() < base.size()) {
                base = base.substr(0, strs[i].size());
            }
        }
        return base;
    }
};

