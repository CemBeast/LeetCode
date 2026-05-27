class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        // iterate through rows
        for i in 0..<grid.count {
            // jiterate through columns
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    perimeter += 4 
                    // check if connect right 
                    if j < grid[i].count - 1 && grid[i][j + 1] == 1 {
                        perimeter -= 2
                    }
                    // check if connect down
                    if i < grid.count - 1 && grid[i + 1][j] == 1 {
                        perimeter -= 2
                    }
                }
            }
        }

        return perimeter
    }
}
// squares - sides
// 1 = 4
// 2 = 6
// 3 = 8
// 4 = 10
// 7 = 16

// dimension - sides
// 1 x 1 = 4
// 2 x 2 = 8
// 3 x 3 = 12


