class Solution {
public:
    vector<int> recoverOrder(vector<int>& order, vector<int>& friends) {
        vector<int> ans;
        unordered_map<int, int> friendMap;
        for(int i = 0; i < friends.size(); i++){
            friendMap[friends[i]] = i;
        }
        for(int i = 0; i < order.size(); i++){
            if(friendMap.find(order[i]) != friendMap.end()){
                ans.push_back(order[i]);
            }
        }
        return ans;
    }
};