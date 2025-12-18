class Solution:
    def findMin(self, nums: List[int]) -> int:
        l, r = 0, len(nums) - 1

        while l <= r:
            mid = (l + r) // 2

            if nums[l] <= nums[r]:
                # already sorted so return nums[l]
                return nums[l]
            if nums[mid] > nums[r]:
                l = mid + 1
            elif nums[mid] < nums[r]:
                r = mid
            elif l == r:
                return nums[l]
            
        return -1