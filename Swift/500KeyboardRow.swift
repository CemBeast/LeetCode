class Solution {
    func findWords(_ words: [String]) -> [String] {
        let firstRow = Set("qwertyuiop"), secondRow = Set("asdfghjkl"), thirdRow = Set("zxcvbnm")
        var res = [String]()
        for word in words {
            let lowercase = word.lowercased()
            let wordSet = Set(lowercase)
            if wordSet.isSubset(of: firstRow) || wordSet.isSubset(of: secondRow) || wordSet.isSubset(of: thirdRow) {
                res.append(word)
            }
        }
        return res
    }
}
