class Solution {
public:
    bool isAnagram(string s, string t) {
        vector<int> s1(26,0), t1(26,0);
        if(s.length() != t.length()){
            return false;
        }
        for(char c: s){
            s1[c - 'a']++;
        }
        for(char c: t){
            t1[c - 'a']++;
        }
        for(int i = 0; i < s1.size(); i++){
            if(s1[i] != t1[i]){
                return false;
            }
        }
        return true;
    }
};