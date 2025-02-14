//
//  27RemoveElement.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 2/13/25.
//
#include <vector>

using namespace std;

class Solution {
public:
    int removeElement(vector<int>& nums, int val) {
        int n = 0;
        for (int i = 0; i < nums.size(); i++)
        {
            if(nums[i] != val)
            {
               nums[n] = nums[i];
               n++;
            }
        }
        return n;
    }
};
