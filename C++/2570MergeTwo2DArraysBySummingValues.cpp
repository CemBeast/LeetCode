#include <vector>
#include <unordered_map>
#include <algorithm>

using namespace std;

class Solution {
public:
    vector<vector<int>> mergeArrays(vector<vector<int>>& nums1, vector<vector<int>>& nums2) {
        unordered_map<int, int> m;
        vector<vector<int>> res;
        for(int i = 0; i < nums1.size(); i++){
            m[nums1[i][0]] += nums1[i][1];
        }
        for(int i = 0; i < nums2.size(); i++){
            m[nums2[i][0]] += nums2[i][1];
        }
        for(const auto &pair : m){
            res.push_back({pair.first, pair.second});
        }
        sort(res.begin(), res.end(), [](const vector<int>& a, const vector<int>& b) {
            return a[0] < b[0]; // Sorting by the first element of each sub-vector (id)
        });
        return res;
    }
};