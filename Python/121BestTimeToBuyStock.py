class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        maxProfit = 0
        if len(prices) <= 1:
            return 0
        lower = prices[0]
        for n in prices:
            difference = n - lower
            if maxProfit < difference:
                maxProfit = difference
            if lower > n:
                lower = n
        return maxProfit