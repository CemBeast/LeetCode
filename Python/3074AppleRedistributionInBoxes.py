class Solution:
    def minimumBoxes(self, apple: List[int], capacity: List[int]) -> int:
        total_apples = sum(apple)
        capacity.sort(reverse=True)
        res = 0
        while total_apples > 0:
            total_apples -= capacity[res]
            res += 1
        return res