class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        ans = 0
        for num in nums:
            number_str = str(num)
            if(len(number_str) % 2 == 0):
                ans += 1

        return ans