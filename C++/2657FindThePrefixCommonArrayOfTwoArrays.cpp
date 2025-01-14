//
//  2657FindThePrefixCommonArrayOfTwoArrays.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/14/25.
//
#include <vector>
#include <unordered_set>
using namespace std;

class Solution {
public:
    vector<int> findThePrefixCommonArray(vector<int>& A, vector<int>& B) {
        vector<int> ans;
        unordered_set<int> mp;
        for (int i = 0; i < A.size(); i++) {
            mp.insert(A[i]);
            mp.insert(B[i]);
            ans.push_back((i + 1) * 2 - mp.size());
        }
        return ans;
    }
};
