class Solution {
public:
    int numberOfBeams(vector<string>& bank) {
        int prevRow = 0, ans = 0;
        for(int i = 0; i < bank.size(); i++){
            int count = 0;
            for(char c: bank[i]){
                if(c == '1'){
                    count++;
                }
            }
            if(count == 0){
                // no lasers in this row so we need to remember
                // count from previous rows 
            }
            else{
                ans += prevRow * count;
                prevRow = count;
            }
        }
        return ans;
    }
};