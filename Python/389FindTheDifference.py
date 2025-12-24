class Solution:
    def findTheDifference(self, s: str, t: str) -> str:
        tMap = {}
        for char in t:
            if char in tMap:
                tMap[char] += 1
            else:
                tMap[char] = 1
        for char in s:
            tMap[char] -= 1
        for key, value in tMap.items():
            if value > 0:
                return key

