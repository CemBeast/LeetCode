class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let cleaned = s.filter {$0.isLetter || $0.isNumber}
        let lowered = cleaned.lowercased()
        print(lowered)
        var arr = Array(lowered)
        var l = 0, r = arr.count - 1
        while l < r {
            if arr[l] != arr[r]{
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }
}
