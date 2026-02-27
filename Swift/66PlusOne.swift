class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var res = digits 

        for (i, num) in res.enumerated().reversed() {
            if num < 9 {
                res[i] += 1
                return res
            } else {
                res[i] = 0
            }
        }
        res.insert(1, at: 0)
        return res
    }
}
