class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var streak = 1, res = 1
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                streak += 1
                res = max(streak, res)
            } else {
                streak = 1
            }
        }
        
        return res
    }
}
