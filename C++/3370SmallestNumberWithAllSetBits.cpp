class Solution {
public:
    int smallestNumber(int n) {
        int ans = 0;
        while(n > 0 ){
            n /= 2;
            cout << n << endl;
            ans++;
        }
        return (1 << ans) - 1;
    }
};