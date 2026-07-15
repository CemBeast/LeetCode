class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        for n in nums {
            var count = 0
            for m in nums {
                if n > m {
                    count += 1
                }
            }
            res.append(count)
        }

        return res
    }
}
