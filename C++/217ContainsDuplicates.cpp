#include <iostream>
#include <unordered_map>
#include <vector>

class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        std::unordered_map<int, int> m;
        for(int i = 0; i < nums.size(); i++)
        {
            m[nums[i]]++;
            if(m[nums[i]] > 1)
                return true;
        }
        return false;
    }
};