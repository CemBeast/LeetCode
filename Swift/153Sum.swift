class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        
        let nums = nums.sorted()
        
        for i in 0..<nums.count - 2 {
            if nums[i] > 0 {
                break
            }
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            var l = i + 1, r = nums.count - 1
            while l < r {
                let sum = nums[l] + nums[r]
                if sum + nums[i] == 0 {
                    res.append([nums[i], nums[l], nums[r]])
                    l += 1
                    r -= 1

                    while l < r && nums[l] == nums[l - 1] {
                        l += 1
                    }
                
                } else if sum + nums[i] < 0 {
                    l += 1
                } else {
                    r -= 1
                }
            }
        }
        
        return res
    }

}
