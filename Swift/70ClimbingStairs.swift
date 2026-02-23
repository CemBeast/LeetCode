class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {return n}
        
        var prev = 2
        var last = 1
        
        for i in 3...n {
            var cur = prev + last
            last = prev
            prev = cur
        }
        
        return prev
    }
}
