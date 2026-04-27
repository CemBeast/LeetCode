class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let word1Arr = Array(word1), word2Arr = Array(word2)
        var i = 0, res = ""
        while i < word1Arr.count && i < word2Arr.count {
            res += String(word1Arr[i])
            res += String(word2Arr[i])
            i += 1
        }
        while i < word1Arr.count {
            res += String(word1Arr[i])
            i += 1
        }
        while i < word2Arr.count {
            res += String(word2Arr[i])
            i += 1
        }

        return res
    }
}
