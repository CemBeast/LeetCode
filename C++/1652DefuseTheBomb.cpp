//
//  1652DefuseTheBomb.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 11/17/24.
//
#include <vector>
using namespace std;

class Solution {
public:
    vector<int> decrypt(vector<int>& code, int k) {
        // if k > 0 we take the numbers in front of i
        // if k < 0 we take the numbers behind k
        // if k = 0 we set everything to 0
        int n = code.size();
        vector<int> ans(n, 0);
        if (k == 0)
        {
            ans = std::vector<int>(code.size(), 0);
        }
        for (int i = 0; i < n; i++)
        {
            int sum = 0;
            if (k > 0)
            {
                for (int j = 1; j < k + 1; j++)
                {
                    sum += code[(i + j) % n];
                }
            }
            else // k < 0
            {
                for (int j = 1; j < -k + 1; j++)
                {
                    sum += code[(i - j + n) % n];
                }
            }
            ans[i] = sum;
        }
        
        return ans;
    }
};
