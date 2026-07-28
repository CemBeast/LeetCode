class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var num = n
        var bitString = ""
        while num > 0 {
            let r = num % 2
            bitString = String(r) + bitString
            num /= 2
        }

        var res = 0 
        for c in bitString {
            res += c == "1" ? 1: 0
        }

        return res
    }
}
