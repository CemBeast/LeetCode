#include <vector>
#include <algorithm>

using namespace std;

class Solution {
public:
    int maxArea(vector<int>& height) {
        int maxArea = 0;
        int l = 0, r = height.size() - 1;
        while (l < r) {
            int tempHeight = min(height[l], height[r]) * (r - l);
            maxArea = max(tempHeight, maxArea);
            if (height[r] > height[l]) {
                l++;
            } else {
                r--;
            }
        }
        return maxArea;
    }
};