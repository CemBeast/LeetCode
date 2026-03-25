class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        let sArr = Array(s)
        
        var last = sArr[0] // Character
        var res = dict[sArr[0]]! // first roman character
        for i in 1..<sArr.count {
            if dict[last]! < dict[sArr[i]]! {
                // character before is worth less than i so we have to remove the last operation
                res += dict[sArr[i]]! - (2 * dict[last]!)
            }
            else {
                res += dict[sArr[i]]!
            }
            last = sArr[i]
        }

        return res
    }
}
