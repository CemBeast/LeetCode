class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        m = dict()
        for i, num in enumerate(nums):
            dif = target - num
            if dif in m:
                return [m[dif], i]
            m[num] = i