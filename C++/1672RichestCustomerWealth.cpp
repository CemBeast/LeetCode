class Solution {
public:
    int maximumWealth(vector<vector<int>>& accounts) {
        int ans = 0;
        for(int i = 0; i < accounts.size(); i++){
            int tempAccount = 0;
            for(int j = 0; j < accounts[i].size(); j++){
                tempAccount += accounts[i][j];
            }
            if(tempAccount > ans){
                ans = tempAccount;
            }
        }
        return ans;
    }
};