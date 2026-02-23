class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 1 {return [[1]]}
        var res = [[1], [1,1]]

        // add to res so there are n rows generated
        for r in 1..<numRows - 1 {
            var tempArr = [1]
            // only add inside values, generates each array in the row
            for c in 1..<res[r].count {
                tempArr.append(res[r][c] + res[r][c - 1])
            }
            tempArr.append(1)
            res.append(tempArr)
        }
        return res
    }
}
