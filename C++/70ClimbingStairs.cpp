//
//  70ClimbingStairs.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/31/25.
//
#include <vector>  // Include vector library for using std::vector

using namespace std;  // Use standard namespace

class Solution {
public:
    int climbStairs(int n) {
        if (n == 1)
            return 1;
        if (n == 2)
            return 2;
        vector<int> dp(n + 1);
        dp[0] = 0;
        dp[1] = 1;
        dp[2] = 2;

        // Fill the vector iteratively
        for (int i = 3; i <= n; ++i){
            // Calculate the next Fibonacci number
            dp[i] = dp[i - 1] + dp[i - 2];
        }
        return dp[n];
    }
};
