class Solution {
public:
    string categorizeBox(int length, int width, int height, int mass) {
        bool bulky = false, heavy = false;
        long long vol = 1LL * length * width * height;
        if(length >= 1e4 || width >= 1e4 || height >= 1e4 || vol >= 1e9){
            bulky = true;
        }
        if(mass >= 100){
            heavy = true;
        }
        if(bulky && heavy){
            return "Both";
        }
        if(!bulky && !heavy){
            return "Neither";
        }
        if(bulky && !heavy){
            return "Bulky";
        }
        return "Heavy";
    }
};