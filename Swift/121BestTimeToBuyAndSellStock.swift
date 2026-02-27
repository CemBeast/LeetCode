class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 1 {
            return 0
        }
        var lowest = prices[0], res = 0
        for num in prices {
            let profit = num - lowest
            res = max(profit, res)
            lowest = min(lowest, num)
        }
      return res
    }
}
