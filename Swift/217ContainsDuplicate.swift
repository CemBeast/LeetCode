class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var freqTable = [Int: Bool]()
        for num in nums {
            if freqTable[num] != nil {
                return true
            }
            freqTable[num] = true
        }
        return false
    }
}
