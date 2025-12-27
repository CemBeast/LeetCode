class Solution:
    def minDeletionSize(self, strs: List[str]) -> int:
        res = 0
        for col in zip(*strs):
            for i in range(len(col) - 1):
                if col[i] > col[i + 1]:
                    res += 1
                    break

        return res