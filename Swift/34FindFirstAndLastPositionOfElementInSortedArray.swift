class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        
        let first = findFirstOccurence(nums, target)
        let second = findLastOccurence(nums, target)
        return [first, second]
    }

    func findFirstOccurence(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1, res = -1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                res = mid
                right = mid - 1
            }
            else if target < nums[mid] {
                right = mid - 1
            }
            else {
                left = mid + 1
            }
        }
        return res
    }

        func findLastOccurence(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1, res = -1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                res = mid
                left = mid + 1
            }
            else if target < nums[mid] {
                right = mid - 1
            }
            else {
                left = mid + 1
            }
        }
        return res
    }
}
