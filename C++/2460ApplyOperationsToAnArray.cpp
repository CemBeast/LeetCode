#include <vector>

using namespace std;

class Solution {
public:
    vector<int> applyOperations(vector<int>& nums) {
        for(int i = 0; i < nums.size() - 1; i++){
            if(nums[i] == nums[i+1]){
                nums[i] = nums[i] * 2;
                nums[i+1] = 0;
            }
        }

        int left = 0, right = 0;
        while(right < nums.size())
        {
            if(nums[right] != 0)
            {
                nums[left] = nums[right];
                left++;
            }
            right++;
        }

        while(left < nums.size())
        {
            nums[left++] = 0;
        }
        return nums;
    }
};