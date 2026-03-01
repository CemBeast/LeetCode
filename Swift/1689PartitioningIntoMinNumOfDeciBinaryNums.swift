class Solution {
    func minPartitions(_ n: String) -> Int {
        var ans = 0
        for character in n {
            if let intVal = Int(String(character)) {
                ans = max(ans, intVal)
            }
        }
        return ans
    }
}
