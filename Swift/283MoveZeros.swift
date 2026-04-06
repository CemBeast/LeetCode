class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var l = 0, r = 1
        if nums.count > 1 {
            // nums has 2 values or more so continue
            while r < nums.count {
                if nums[l] == 0 && nums[r] != 0 {
                    nums.swapAt(l, r)
                    l += 1
                    r += 1
                } else if nums[l] == 0 && nums[r] == 0 {
                    r += 1
                } else {
                    l += 1
                    r += 1
                }
            }
        } 
    }
}
