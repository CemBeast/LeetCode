class Solution {
public:
    int majorityElement(vector<int>& nums) {
        unordered_map<int,int> m;
        int majority = 0, majorityVal = 0;
        for(int i = 0; i < nums.size(); i++){
            m[nums[i]]++;
            if(majorityVal < m[nums[i]]){
                majorityVal = m[nums[i]];
                majority = nums[i];
            }
        }
        return majority;
    }
};