class Solution {
public:
    bool isOneBitCharacter(vector<int>& bits) {
        int i = 0; 
        bool toggle = false;
        while(i < bits.size()){
            int num = bits[i];
            if(num == 0){
                toggle = true;
                i++;
            }
            else{
                toggle = false;
                i += 2;
            }
        }
        return toggle;
    }
};