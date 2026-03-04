class Solution {
    func numSpecial(_ mat: [[Int]]) -> Int {
        // keeps count of 1s at each row
        var rowCount: [Int] = [Int](repeating: 0, count: mat.count)
        var colCount: [Int] = [Int](repeating: 0, count: mat[0].count)
        var res = 0
        for i in 0..<mat.count {
            for j in 0..<mat[0].count {
                if mat[i][j] == 1 {
                    // occurence of 1 we increment
                    rowCount[i] += 1
                    colCount[j] += 1
                }
            }
        }

        for i in 0..<mat.count {
            for j in 0..<mat[0].count {
                if mat[i][j] == 1 && rowCount[i] == 1 && colCount[j] == 1 {
                    res += 1
                }
            }
        }

        return res
    }
}
