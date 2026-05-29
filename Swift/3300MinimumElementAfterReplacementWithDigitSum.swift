class Solution {
    func minElement(_ nums: [Int]) -> Int {
        var res = [Int]()
        for num in nums {
            let str = String(num)
            var n = 0
            for c in str {
                let digit = Int(String(c))
                n += digit!
            }
            res.append(n)
        }

        return res.min() ?? 0
    }
}
