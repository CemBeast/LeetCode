class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let m = matrix.count, n = matrix[0].count
        var res = Array(repeating: Array(repeating: 0, count:m), count: n)
        for i in 0..<m {
            for j in 0..<n {
                res[j][i] = matrix[i][j]
            }
        }
        return res
    }
}
