class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var res = [Int]()
        var m = [Int: Int]()
    
        let truth = Set(1...nums.count)

        for num in nums {
            m[num, default:0] += 1
            if m[num] == 2 {
                res.append(num)
            }
        }

        let valid = Set(m.keys)
        let diff = truth.subtracting(valid)
        let last = diff.first ?? 0 
        res.append(last)

        return res
    }
}
