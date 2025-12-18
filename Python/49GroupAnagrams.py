class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        res = []
        maps = {}
        for word in strs:
            charArray = [0] * 26
            for c in word:
                # translate char to index and inc count
                charArray[ord(c) - 97] += 1
            if tuple(charArray) in maps:
                maps[tuple(charArray)].append(word)
            else:
                maps[tuple(charArray)] = [word]
        
        for value in maps.values():
            res.append(value)
        return res