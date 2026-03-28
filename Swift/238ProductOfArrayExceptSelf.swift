class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 1, count: nums.count)

        var left = [Int]()
        var runningMultiplied = 1
        for i in 0..<nums.count{
            if i == 0 {
                left.append(1)
            } else {
                runningMultiplied *= nums[i - 1]
                left.append(runningMultiplied)
            }
        }

        var right = Array(repeating: 1, count:nums.count)
        runningMultiplied = 1
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            if i == nums.count - 1 {
                right[i] = 1
            } else {
                runningMultiplied *= nums[i + 1]
                right[i] = runningMultiplied
            }
        }

        for i in 0..<nums.count{
            res[i] = left[i] * right[i]
        }
        
        return res
    }
}
// 1 , 2, 3, 4
// LEFT 1, 1, 2, 6
