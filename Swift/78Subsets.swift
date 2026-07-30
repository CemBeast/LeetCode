class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        res.append([])
        for i in 1...nums.count {
            let pairs = nums.combinations(ofCount: i)
            for combination in pairs {
                res.append(combination)
            }
        }

        return res
    }
}
