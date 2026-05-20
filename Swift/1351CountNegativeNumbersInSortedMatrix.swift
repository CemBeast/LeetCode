class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var row = grid.count - 1, col = 0, res = 0
        // start at bottom left
        while row >= 0 && col < grid[0].count {
            if grid[row][col] < 0 {
                res += grid[0].count - col
                row -= 1
            } else {
                col += 1
            }
        }

        return res
    }
}
