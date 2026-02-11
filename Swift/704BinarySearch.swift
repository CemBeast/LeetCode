class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                return mid
            }
            else if target > nums[mid] {
                // go right half
                left = mid + 1
            }
            else {
                // go left
                right = mid - 1
            }
        }
        return -1
    }
}

