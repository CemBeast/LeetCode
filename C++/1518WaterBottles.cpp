class Solution {
public:
    int numWaterBottles(int numBottles, int numExchange) {
        int ans = 0, bottlesEmpty = 0;
        while(numBottles > 0){
            // Accumulate drinkable bottles
            ans += numBottles; 
            // Drink the bottles 
            bottlesEmpty += numBottles;
            // Refill the empty bottles by exchange rate
            numBottles = floor(bottlesEmpty / numExchange);
            // update the number of empty bottles
            bottlesEmpty = bottlesEmpty % numExchange;
        }
        return ans;
    }
};