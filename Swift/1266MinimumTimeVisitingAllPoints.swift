class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var x = points[0][0]
        var y = points[0][1]
        var res = 0
        for i in 1..<points.count {
            let newX = points[i][0]
            let newY = points[i][1]

            // get distances of old x to new x and old y to new y
            let xDist = abs(x - newX)
            let yDist = abs(y - newY)

            // add longest path
            res += max(xDist, yDist)

            // update points
            x = newX
            y = newY
        }
        return res
    }
}
