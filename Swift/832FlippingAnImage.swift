class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        let n = image.count
        var res = Array(repeating: Array(repeating: 0, count: n), count: n)
        for i in 0..<n {
            for j in 0..<n {
                if image[i][j] == 0 {
                    res[i][j] = 1
                }
            }
            res[i].reverse()
        }
        return res
    }
}
