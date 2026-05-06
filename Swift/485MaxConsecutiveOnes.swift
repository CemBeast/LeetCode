class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var res = 0, count = 0
        for num in nums {
            if num == 1 {
                count += 1
            } else {
                count = 0
            }
            res = max(res, count)
        }
        return res
    }
}
