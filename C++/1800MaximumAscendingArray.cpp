//
//  1800MaximumAscendingArray.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/4/25.
//

#include <iostream>
#include <vector>
#include <algorithm> // For std::max

using namespace std;

class Solution {
public:
    int maxAscendingSum(vector<int>& nums) {
        int sum = nums[0], maxSum = nums[0];
        for(int i = 0; i < nums.size() - 1; i++)
        {
            if(nums[i+1] > nums[i])
            {
                sum += nums[i+1];
            }
            else
            {
                maxSum = max(maxSum, sum);
                sum = nums[i+1];
            }
        }
        return max(maxSum, sum);
    }
};
