class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var magLetterCount = [Character : Int]()
        for c in magazine {
            magLetterCount[c, default: 0] += 1
        }

        for c in ransomNote {
            if let count = magLetterCount[c] {
                if count <= 0 {
                    return false
                }
                magLetterCount[c]! -= 1
            } else {
                return false
            }
        }

        return true
    }
}
