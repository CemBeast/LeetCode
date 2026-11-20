class Solution:
    def maxSubArray(self, nums: list[int]) -> int:
        curSum = maxSum = nums[0]
        for x in nums[1:]:
            curSum = max(x, curSum + x)
            maxSum = max(maxSum, curSum)

        return maxSum
