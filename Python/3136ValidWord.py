class Solution:
    def isValid(self, word: str) -> bool:
        word = word.lower()
        hasVowel = False
        hasCons = False
        if len(word) < 3:
            return False
        for char in word:
            if not char.isalnum():
                return False
            if re.match(r'[aeiouAEIOU]', char):
                hasVowel = True
            elif not char.isdigit():
                hasCons = True
    
        return hasVowel and hasCons