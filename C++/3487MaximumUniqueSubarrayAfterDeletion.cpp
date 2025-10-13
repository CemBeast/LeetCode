class Solution {
public:
    int maxSum(vector<int>& nums) {
        unordered_map<int, int> m;
        int max = nums[0], ans = 0;
        for (int i = 0; i < nums.size(); i++){
            if(m.find(nums[i]) == m.end()){
                // Not in map - only add unique values
                m[nums[i]] = i;
                if(nums[i] > 0){
                    // Only add values above 0 (since we can delete any)
                    ans += nums[i];
                }
            }
            if(max < nums[i]){
                // Check for max values
                max = nums[i];
            }
        }
        if(max < 0){
            // if the max value is < 0 then thats our best
            return max;
        }
        return ans;
    }
};