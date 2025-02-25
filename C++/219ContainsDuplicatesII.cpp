#include <vector>
#include <unordered_set>

class Solution {
public:
    bool containsNearbyDuplicate(vector<int>& nums, int k) {
        std::unordered_set<int> seen;
        for(int i = 0; i < nums.size(); i++)
        {
            if (i > k)
                seen.erase(nums[i - k - 1]);
            if(seen.count(nums[i]))
                return true;
            seen.insert(nums[i]);
        }
        return false;
    }
};