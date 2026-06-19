class Solution {
    func mapWordWeights(_ words: [String], _ weights: [Int]) -> String {
        var res = ""
        for word in words {
            var wordWeight = 0
            for c in word {
                if let ascii = c.asciiValue {
                    // ascii of a is 97
                    let position = Int(ascii) - Int(Character("a").asciiValue!)
                    wordWeight += weights[position]
                }
            }
            let modulo = wordWeight % 26
            let index = 25 - modulo
            let charAscii = index + Int(Character("a").asciiValue!)
            if let scalar = UnicodeScalar(charAscii) {
                let character = Character(scalar)
                res.append(character)
            }

        }

        return res
    }
}
