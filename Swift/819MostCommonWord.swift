class Solution {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        var m = [String: Int]()
        var array = [String]()
        var str = ""
        var bannedSet = Set(banned)
        
        for c in paragraph {
            if c.isLetter {
                let lowercase = c.lowercased()
                str.append(lowercase)
            } else {
                if str != "" {
                    array.append(str)
                    str = ""
                }
            }
        }

        for word in array {
            if !bannedSet.contains(word) {
                m[word, default: 0] += 1
            }
        }

        if let mostCommon = m.max(by: {$0.value < $1.value }){
            str = mostCommon.key
        }
        return str
    }
}
