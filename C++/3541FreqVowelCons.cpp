class Solution {
public:
    int maxFreqSum(string s) {
        map<char, int> v, c;
        int maxV = 0, maxC = 0;
        for(int i = 0; i < s.size(); i++){
            if(s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u'){
                v[s[i]]++;
                if(v[s[i]] > maxV){
                    maxV = v[s[i]];
                }
            }
            else{
                c[s[i]]++;
                if(c[s[i]] > maxC){
                    maxC = c[s[i]];
                }
            }
        }
        cout<<maxV;
        cout<<maxC;
        return maxC + maxV;
    }
};