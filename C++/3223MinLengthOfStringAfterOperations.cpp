//
//  3223MinLengthOfStringAfterOperations.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/13/25.
//
#include <string>
#include <unordered_map>
using namespace std;

class Solution {
public:
    int minimumLength(string s) {
        unordered_map<char, int> M;
        int count = 0;
        for (int i = 0; i < s.size(); i++) {
            if (M.find(s[i]) == M.end()) {
                M.insert(make_pair(s[i], 1)); // add char to map
            } else {
                M[s[i]]++; // increment count of char
            }
        }
        for (auto i : M) {
            while (i.second >= 3) {
                count += 2;
                i.second -= 2;
            }
        }
        return s.size() - count;
    }
};
