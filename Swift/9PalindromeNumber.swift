class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var num = x
        var reversedNum = 0
        while num > 0 {
            let divisor = num % 10
            num /= 10
            reversedNum = (10 * reversedNum) + divisor
        }
        return x == reversedNum
    }
}
