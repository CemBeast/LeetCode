//
//  121BestTimeToBuyAndSellStock.cpp
//  Testing C++
//
//  Created by Cem Beyenal on 1/12/25.
//
#include <vector>
#include <climits>  // For INT_MAX
using namespace std;

class Solution {
public:
    int maxProfit(vector<int>& prices) {
        int minPrice = INT_MAX;
        int maxProfit = 0;

        for (int i = 0; i < prices.size(); i++) {
            // Update the minimum price to the lowest price found so far
            if (prices[i] < minPrice) {
                minPrice = prices[i];
            }
            // Calculate the profit if selling on day 'i' and update maxProfit if it's the best found so far
            else if (prices[i] - minPrice > maxProfit) {
                maxProfit = prices[i] - minPrice;
            }
        }

        return maxProfit;
    }
};
