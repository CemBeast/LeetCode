class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        count = defaultdict(int)
        for num in nums:
            count[num] += 1

        majority = max(count, key = count.get)
        return majority
        