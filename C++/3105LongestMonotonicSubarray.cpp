//
//  3105LongestMonotonicSubarray.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/3/25.
//
#include <iostream>
#include <vector>
#include <algorithm> // For std::max

using namespace std;

class Solution {
public:
    int longestMonotonicSubarray(vector<int>& nums) {
        int maxIncrease = 1, maxDecrease = 1, increase = 1, decrease = 1;
        for(int i = 0; i < nums.size() - 1; i++)
        {
            if (nums[i + 1] > nums[i])
            {
                decrease = 1;
                increase++;
            }
            else if (nums[i + 1] < nums[i])
            {
                increase = 1;
                decrease++;
            }
            else
            {
                increase = 1;
                decrease = 1;
            }
            if(increase > maxIncrease)
            {
                maxIncrease = increase;
            }
            if (decrease > maxDecrease)
            {
                maxDecrease = decrease;
            }
        }
        return max(maxDecrease, maxIncrease);
    }
};
