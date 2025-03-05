class Solution {
public:
    long long coloredCells(int n) {
        if (n == 1)
            return 1;
        long long prev = 1;
        for (long long i = 2; i <= n; i++)
        {
            long long cur = prev + ((i - 1) * 4);
            prev = cur;
        }
        return prev;
    }
};