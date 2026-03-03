class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
       var ans = [Int]()
       let numRows = matrix.count
       let numCols = matrix[0].count
       var top = 0, left = 0, right = numCols - 1, bottom = numRows - 1
       while top <= bottom && left <= right {
            
            // top row
            for i in left...right {
                ans.append(matrix[top][i])
            }
            top += 1
            
            // right col (only if rows remain)
            if top <= bottom {
                for i in top...bottom {
                    ans.append(matrix[i][right])
                }
            }
            right -= 1

            // bottom row (only if both rows and cols remain)
            if top <= bottom && left <= right {
                for i in (left...right).reversed() {
                    ans.append(matrix[bottom][i])
                }
                bottom -= 1
            }

            // left col (only if both rows and cols remain)
            if left <= right && top <= bottom{
                for i in (top...bottom).reversed() {
                    ans.append(matrix[i][left])
                }
                left += 1
            }
       } 
       return ans
    }
}

