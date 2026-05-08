class Solution {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var sorted = nums.sorted()
        var l = 0, r = sorted.count - 1, res = 0
        while l < r {
            if (sorted[l] + sorted[r]) == k {
                l += 1
                r -= 1
                res += 1
            } else if (sorted[l] + sorted[r]) < k {
                l += 1
            } else {
                r -= 1
            }
        }
        return res
    }
}

