class Solution {
    func sumCounts(_ nums: [Int]) -> Int {
        var res = 0

        for i in 0..<nums.count {
            for j in i..<nums.count {
                let subArray = nums[i...j]
                let distinct = Set(subArray)
                let n = distinct.count

                let square = n * n
                res += square
            }
        }

        return res
    }
}
