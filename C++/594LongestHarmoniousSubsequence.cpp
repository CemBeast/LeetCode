class Solution {
public:
    int findLHS(vector<int>& nums) {
        unordered_map<int, int> freq;
        for(int x : nums){
            freq[x]++;
        }
        int ans = 0;
        for(auto &pair: freq){
            int val = pair.first;
            if(freq.count(val +1)) {
                ans = max(ans, pair.second + freq[val + 1]);
            }
        }
        return ans;
    }
};