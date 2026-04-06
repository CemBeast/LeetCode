class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var l = 0, r = nums.count - 1
        var res = [Int]()
        while l <= r {
            let lSquare = nums[l] * nums[l]
            let rSquare = nums[r] * nums[r]
            if lSquare > rSquare {
                res.append(lSquare)
                l += 1
            } else {
                res.append(rSquare)
                r -= 1
            }
        }
        return res.reversed()
    }
}
