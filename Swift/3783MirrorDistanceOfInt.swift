class Solution {
    func mirrorDistance(_ n: Int) -> Int {
        let nStr = String(n)
        let reversed = String(nStr.reversed())
        let reversedInt = Int(reversed)
        return abs(n - reversedInt!)
    }
}
