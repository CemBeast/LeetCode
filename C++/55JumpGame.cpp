class Solution {
public:
    bool canJump(vector<int>& nums) {
       int destinationIndex = nums.size() - 1;
       // start from the back and see if you can make it to dest
       for(int i = nums.size() - 2; i >= 0; --i){
            if(nums[i] >= destinationIndex - i){
                destinationIndex = i;
            }
       }
       return destinationIndex == 0;
    }
};