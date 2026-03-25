class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {

        let sCode = code(s)
        let tCode = code(t)

        print(sCode)
        return tCode == sCode
    }

    func code(_ s: String) -> [Int] {

        var seen = [Character: Int]() // seen holds the character and its first seen index
        var res = [Int]()
        var i = 0
        for (offset, char) in s.enumerated() {
            if let index = seen[char] {
                // we have seen this character before
                res.append(index)
            } else {
                // have not seen so we need to put in the index 
                seen[char] = offset
                res.append(offset)
            }
        }
        return res
    }
}

