//
//  916WordSubsets.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/10/25.
//

#include <iostream>
#include <vector>
#include <string>
#include <unordered_map>
#include <algorithm>

using namespace std;

class Solution {
public:
    vector<string> wordSubsets(vector<string>& words1, vector<string>& words2) {
        unordered_map<char, int> M;
        vector<string> ans;
        for (int i = 0; i < words2.size(); i++)
        {
            unordered_map<char, int> temp;
            for (char c : words2[i])
            {
                temp[c]++;
            }
            // Update M with maximum frequencies for each character
            for (auto& [key, value] : temp) {
                M[key] = max(M[key], value);
            }
        }
        for (int i = 0; i < words1.size(); i++)
        {
            unordered_map<char, int> P;
            for (char c : words1[i])
            {
                P[c]++;
            }
            if (isSubset(M, P))
            {
                ans.push_back(words1[i]);
            }
        }
        return ans;
    }
    bool isSubset(unordered_map<char, int>& M, unordered_map<char, int>& P) {
        for (auto& [key, value] : M)
        {
            if (P.find(key) == P.end() || P[key] < value)
            {
                return false;
            }
        }
        return true;
    }
};
