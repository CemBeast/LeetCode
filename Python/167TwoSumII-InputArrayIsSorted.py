class Solution(object):
    def twoSum(self, numbers, target):
        """
        :type numbers: List[int]
        :type target: int
        :rtype: List[int]
        """
        # remember index starts at 1 and not 0 so we must add 1 to sol
        left = 0
        right = len(numbers) - 1
        ans = []
        while left <= right:
            if numbers[left] + numbers[right] == target:
                ans.append(left + 1)
                ans.append(right + 1)
                break
            if numbers[left] + numbers[right] < target:
                left += 1
            if numbers[left] + numbers[right] > target:
                right -= 1

        return ans
