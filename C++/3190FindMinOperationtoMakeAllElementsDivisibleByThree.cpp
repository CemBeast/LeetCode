class Solution {
public:
    int minimumOperations(vector<int>& nums) {
        int ans = 0;
        for(int i = 0; i < nums.size(); i++){
            int modulo = nums[i] % 3;
            if(modulo != 0){
                ans++;
            }
        }
        return ans;
    }
};