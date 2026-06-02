class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var m = Set<Int>()
        var res = [Int]()
        for num in nums {
            m.insert(num)
        }
        for i in 0..<nums.count {
            if !m.contains(i + 1) {
                res.append(i + 1)
            }
        }
        return res
    }
}
