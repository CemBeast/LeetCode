class Solution {
    func furthestDistanceFromOrigin(_ moves: String) -> Int {

        var directionCount = 0, spaceCount = 0
        for c in moves {
            if c == "R" {
                // direction countn is positive when more R's
                directionCount += 1
            } else if c == "L" {
                // direction count is negative when more L's and 0 when equal
                directionCount -= 1
            } else {
                spaceCount += 1
            }
        }
        return abs(directionCount) + spaceCount
    }
}
