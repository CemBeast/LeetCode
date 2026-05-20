class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        for i in 0..<nums.count - 2 {
            if nums[i] == nums[i + 1] {
                return nums[i]
            } else if nums[i] == nums[i + 2] {
                return nums[i]
            } 
        }
        return nums.last ?? 0
    }
}
