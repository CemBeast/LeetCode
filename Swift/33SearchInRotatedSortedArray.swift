class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1
        // need to find middle point first using Binary search
        while l <= r {
            let mid = (l + r) / 2
            if nums[mid] == target {
                return mid
            }
            if nums[l] <= nums[mid] {
                // left half is sorted
                if nums[l] <= target && target <= nums[mid] {
                    // we check left half
                    r = mid - 1
                } else {
                    // check right half 
                    l = mid + 1
                }
            } else {
                // right half is sorted
                if nums[mid] <= target && target <= nums[r] {
                    // we check right half
                    l = mid + 1
                } else {
                    // check left half 
                    r = mid - 1
                }
            }
        }

        return -1
    }
}
