class Solution:
    def search(self, nums: List[int], target: int) -> int:
        l, r, = 0, len(nums) - 1
        while l <= r:
            m = (l + r) // 2
            if nums[m] > target:
                # go in left half, update right
                r = m - 1
            elif nums[m] < target:
                # go in right half, update left
                l = m + 1
            else:
                return m

        return -1