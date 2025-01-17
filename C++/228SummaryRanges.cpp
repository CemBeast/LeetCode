//
//  228SummaryRanges.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/16/25.
//
#include <vector>
#include <string>
using namespace std;

class Solution {
public:
    vector<string> summaryRanges(vector<int>& nums) {
        vector<string> result;
        if (nums.empty()) return result;  // Check if the vector is empty

        int start = nums[0];
        for (int i = 1; i <= nums.size(); i++) {
            // Check if it's the end of the array or the next number is not consecutive
            if (i == nums.size() || nums[i] != nums[i - 1] + 1) {
                if (start == nums[i - 1]) {
                    result.push_back(to_string(start));  // Push single number as range
                } else {
                    result.push_back(to_string(start) + "->" + to_string(nums[i - 1]));  // Push range
                }
                if (i < nums.size()) {
                    start = nums[i];  // Reset start to the new range's beginning
                }
            }
        }
        return result;
    }
};
