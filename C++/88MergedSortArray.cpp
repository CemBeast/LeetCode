class Solution {
public:
    void merge(vector<int>& nums1, int m, vector<int>& nums2, int n) {
        int endOne = m - 1, endTwo = n - 1;
        while(endOne >= 0 && endTwo >= 0){
            if(nums2[endTwo] > nums1[endOne]){
                nums1[endOne + endTwo + 1] = nums2[endTwo];
                endTwo--;
            }
            else{
                nums1[endOne + endTwo + 1] = nums1[endOne];
                endOne--;
            }
        }
        // Fill the resto of nums1 with nums2
        while(endTwo >= 0){
            nums1[endOne + endTwo + 1] = nums2[endTwo];
            endTwo--;
        }
    }
};