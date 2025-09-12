class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        expectedSum = sum(range(len(nums) + 1))
        sm = sum(nums)
        return int(expectedSum - sm)
