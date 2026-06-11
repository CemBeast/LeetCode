class Solution {
    func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
        if k < 2 {
            return 0
        }
        
        let sorted = nums.sorted()
        var l = 0, r = k - 1, res = sorted.last!

        while r < nums.count {
            let val = sorted[r] - sorted[l]
            res = min(val, res)
            l += 1
            r += 1
        }

        return res
    }
}
