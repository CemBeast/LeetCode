class Solution {
    func leftRightDifference(_ nums: [Int]) -> [Int] {
        var leftSum = Array(repeating: 0, count: nums.count)
        var rightSum = Array(repeating: 0, count: nums.count)
        var res = Array(repeating:0, count: nums.count)

        var countingSumLeft = 0, countingSumRight = 0
        for i in 0..<nums.count - 1 {
            countingSumLeft += nums[i]
            leftSum[i + 1] = countingSumLeft
        }

        for i in (0...nums.count - 1).reversed() {
            rightSum[i] = countingSumRight
            countingSumRight += nums[i]
        }
        
        for i in 0..<nums.count {
            let dif = abs(leftSum[i] - rightSum[i])
            res[i] = dif
        }

        return res
    }
}
