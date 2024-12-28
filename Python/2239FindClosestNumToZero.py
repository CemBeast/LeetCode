class Solution(object):
    def findClosestNumber(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        closest = nums[0]
        for num in nums:
            if abs(num) - 0 < abs(closest):
                closest = num
            elif abs(num) - 0 == abs(closest):
                if num > closest:
                    closest = num
        return closest
