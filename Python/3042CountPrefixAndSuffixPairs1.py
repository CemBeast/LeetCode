class Solution(object):
    def countPrefixSuffixPairs(self, words):
        """
        :type words: List[str]
        :rtype: int
        """
        count = 0
        for i in range(len(words)):
            for j in range(i + 1, len(words)):
                if self.isPrefixAndSuffix(words[i], words[j]):
                    count += 1
        return count

    def isPrefixAndSuffix(self, str1, str2):
        if (len(str1) > len(str2)):
            return False
        for i in range(len(str1)):
            if str1[i] != str2[i]:
                return False
        for i in range(len(str1)):
            if str1[i] != str2[len(str2) - len(str1) + i]:
                return False
        return True

