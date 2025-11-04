class Solution {
public:
    vector<int> findXSum(vector<int>& nums, int k, int x) {
        vector<int> ans;
        int left = 0, right = k - 1;
        while(right < nums.size()){
            vector<int> temp;
            temp.assign(nums.begin() + left, nums.begin() + right + 1);
            ans.push_back(xsum(temp, x));
            right++;
            left++;
        }
        return ans;
    }

    int xsum(vector<int> nums, int x)
    {
       unordered_map<int, int> freq;
       for(int n: nums)
       {
            freq[n]++;
       } 

       int n = nums.size();
       vector<vector<int>> buckets(n + 1);
       // group numbers by frequency in bucket
       // bucket count of 3 has values num in it
       for(auto &[num, count] : freq)
       {
            buckets[count].push_back(num);
       }
       // sort the bucket in descending (for tie breakers)
       for(auto &bucket: buckets)
       {
            sort(bucket.begin(), bucket.end(), greater<int>());
       }

       int sum = 0, picked = 0;
       int need = min<int>(x, (int)freq.size());              

       // traverse from highest frequency to lowest
       for (int i = n; i >= 1 && picked < need; --i) {        
           for (int num : buckets[i]) {
               sum += num * i;                                
               if (++picked == need) break;                   
           }
       }
       return sum;
    }
};