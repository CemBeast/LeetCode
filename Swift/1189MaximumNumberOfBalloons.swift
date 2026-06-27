class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var m = [Character : Int]()
        var s = Set("balloon")

        for c in text {
            if s.contains(c) {
                m[c, default: 0] += 1
            }
        }

        let bCount = m["b", default: 0]
        let aCount = m["a", default: 0]
        let lCount = m["l", default: 0] / 2 // Requires 2 per balloon
        let oCount = m["o", default: 0] / 2 // Requires 2 per balloon
        let nCount = m["n", default: 0]

        return min(bCount, aCount, lCount, oCount, nCount)
    }
}
