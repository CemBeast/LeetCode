class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var upDown = 0, leftRight = 0
        for c in moves {
            if c == "U" {
                upDown += 1
            } else if c == "D" {
                upDown -= 1
            } else if c == "L" {
                leftRight += 1
            } else {
                leftRight -= 1
            }
        }

        return (upDown == 0) && (leftRight == 0)
    }
}
