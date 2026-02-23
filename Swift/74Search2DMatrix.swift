class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        // range will be size of m x n - 1 -- (0..n - 1)
        let numRows = matrix.count // number of rows
        let numCols = matrix.first?.count // number of columns
        let searchRange = (numRows * numCols!) - 1
        var l = 0, r = searchRange
        while l <= r {
            let mid = l + (r - l) / 2 // mid in 1D array value
            let x = mid / numCols!
            let y = mid % numCols!
            if matrix[x][y] == target {
                return true
            }
            else if matrix[x][y] < target {
                // go to right (lower part of matrix)
                l = mid + 1
            }
            else {
                // go left (upper)
                r = mid - 1
            }
        }

        return false
    }
}
