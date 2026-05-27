class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var m = [Character : Int]()
        for c in s {
            m[c, default: 0] += 1
        }
        for (index, c) in s.enumerated() {
            if m[c] == 1 {
                return index
            }
        }
        return -1
    }
}
