class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var sFreq = [Character : Int]()
        var tFreq = [Character : Int]()
        for ch in s {
            sFreq[ch, default : 0] += 1
        }
        for ch in t {
            tFreq[ch, default : 0] += 1
        }
        return sFreq == tFreq
    }
}
