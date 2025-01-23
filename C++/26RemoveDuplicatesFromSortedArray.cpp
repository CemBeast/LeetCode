//
//  26RemoveDuplicatesFromSortedArray.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/23/25.
//
#include <iostream>   // For input/output operations (if needed)
#include <vector>     // To use std::vector
#include <algorithm>  // For any algorithm functions (if required)

using namespace std;  // To avoid using std:: prefix with standard library elements

class Solution {
public:
    int removeDuplicates(vector<int>& nums) {
        int i = 1;
        while( i < nums.size())
        {
            bool isDup = false;
            if (nums[i - 1] == nums[i])
            {
                isDup = true;
            }
            if (isDup)
            {
                nums.erase(nums.begin() + i);
            }
            else
                i++;
        }
        return nums.size();
    }
};
