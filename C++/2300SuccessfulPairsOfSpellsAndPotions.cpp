class Solution {
public:
    vector<int> successfulPairs(vector<int>& spells, vector<int>& potions, long long success){
        vector<int> ans;
        int index = 0;
        sort(potions.begin(), potions.end());
        for(int i = 0; i < spells.size(); i++){
            long long toFind = (success + (long long)spells[i] - 1) / (long long) spells[i];
            index = binarySearch(potions, toFind);
            int valid = (int)potions.size() - index;
            ans.push_back(valid);
        }
        return ans;
    }

    int binarySearch(vector<int>& arr, long long search){
        int l = 0, r = (int)arr.size() - 1;
        int ans = (int)arr.size();
        while(l <= r){
            int m = l + (r - l) / 2;
            if((long long)arr[m] >= search){
                ans = m; 
                r = m - 1;
            }
            else{
                l = m + 1;
            }
        }
        return ans;
    }
};