class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var farthestReach = 0
        for (i, num) in nums.enumerated() {
            if i > farthestReach {
                return false
            }
            farthestReach = max(num + i, farthestReach)
        }

        return true
    }
}
