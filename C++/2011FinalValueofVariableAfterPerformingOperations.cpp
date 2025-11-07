class Solution {
public:
    int finalValueAfterOperations(vector<string>& operations) {
        int ans = 0;
        for(string &str: operations){
            if(str == "X++" || str == "++X"){
                ans++;
            }
            else{
                ans--;
            }
        }
        return ans;
    }
};