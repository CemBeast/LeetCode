class Solution {
public:
    int missingNumber(vector<int>& nums) {
        int expectedSum = 0, realSum = 0, i = 0;
        for(i = 1; i < nums.size() + 1; i ++){
            expectedSum += i;
        }
        for(int i = 0; i < nums.size(); i ++)
            realSum += nums[i];
        return expectedSum - realSum;
    }
};