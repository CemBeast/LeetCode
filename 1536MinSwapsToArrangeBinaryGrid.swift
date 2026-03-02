class Solution {
    func minSwaps(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var maxRight = Array(repeating: -1, count:grid.count), count = 0
        for r in 0..<n {
            for c in 0..<n {
                // find most right 1 in grid and save index
                if grid[r][c] == 1 {
                    maxRight[r] = c
                }
            }
        }
        var sorted = maxRight.sorted()
        for i in 0..<sorted.count {
            if sorted[i] > i {
                return -1
            }
        }

        for i in 0..<maxRight.count {
            var j = i
            
            while j < n && maxRight[j] > i {
                j += 1
            }

            if j == n { return -1}

            while j > i {
                maxRight.swapAt(j, j - 1)
                count += 1
                j -= 1
            }
        }

        return count
    }
}
