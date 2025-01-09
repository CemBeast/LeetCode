class Solution(object):
    def prefixCount(self, words, pref):
        """
        :type words: List[str]
        :type pref: str
        :rtype: int
        """
        count = 0
        for i in range(len(words)):
            isPrefix = True
            for j in range(len(pref)):
                if j >= len(words[i]) or words[i][j] != pref[j]:
                    isPrefix = False
                    break
            if isPrefix:
                count += 1
        return count


# Better solution using python functions
class Solution1(object):
    def prefixCount1(self, words, pref):
        count = 0

        for word in words:
            if word.startswith(pref):
                count += 1

        return count