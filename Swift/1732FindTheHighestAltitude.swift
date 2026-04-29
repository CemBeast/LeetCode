class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var altitudes = Array(repeating: 0, count: gain.count + 1)
        var countingSum = 0, res = 0
        for (i, num) in gain.enumerated() {
            countingSum += num
            altitudes[i + 1] += countingSum
            res = max(altitudes[i+1], res)
        }
        return res
    }
}
