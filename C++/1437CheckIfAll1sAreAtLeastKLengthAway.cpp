class Solution {
public:
    bool kLengthApart(vector<int>& nums, int k) {
        int count = 0;
        bool firstOne = false;
        for(int i = 0; i < nums.size(); i++){
            if(nums[i] == 1){
                if(firstOne && count < k){
                    return false;
                }
                firstOne = true;
                count = 0;
            }
            else{
                if(firstOne){
                    count++;
                }
            }
        }
        return true;
    }
};