#include <iostream>
#include <vector>
using namespace std;

class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int pos = 0;
        for(int i = 0; i < nums.size(); i++) {
            if(nums[i] != 0) {
                nums[pos++] = nums[i];
            }
        }
        while(pos < nums.size()) {
            nums[pos++] = 0;
        }
    }
};

void printVector(vector<int>& nums) {
    for(int i = 0; i< nums.size(); i++) {
        std::cout << nums[i] << " ";
    }
}

int main() {
    Solution sol;
    std::vector<int> nums = {0,1,0,3,12};
    sol.moveZeroes(nums);
    printVector(nums);
}
