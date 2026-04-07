class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var windowSum = nums.prefix(k).reduce(0, +)
        var res = Double(windowSum) / Double(k)
        
        for i in k..<nums.count {
            windowSum += nums[i] - nums[i - k]
            res = max(res, Double(windowSum) / Double(k))
        }

        return res
    }
}
