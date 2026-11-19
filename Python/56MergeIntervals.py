class Solution:
    def merge(self, intervals: list[list[int]]) -> list[list[int]]:
        s = sorted(intervals, key=lambda w: w[0])
        cur = s[0]
        res = []
        for i in range(1, len(s)):
            if cur[1] >= s[i][0]:
                cur = [cur[0], max(cur[1], s[i][1])]
            else:
                res.append(cur)
                cur = s[i]

        res.append(cur)

        return res
