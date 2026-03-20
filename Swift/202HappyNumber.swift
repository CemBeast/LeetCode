class Solution {
    func isHappy(_ n: Int) -> Bool {
        var N = n
        var seen: Set<Int> = []
        if n == 1 {
            return true
        }
        while N != 1 {
            if seen.contains(N) {
                return false
            }
            seen.insert(N)
            N = sumOfSquareDigits(N)
        }
        return true
    }

    func sumOfSquareDigits(_ n: Int) -> Int {
        let digits = String(n).compactMap {Int(String($0))}
        var res = 0
        for num in digits {
            let square = num * num
            res += square
        }
        return res
    }
}

// 2 -> 4 -> 16 -> 37 -> 58 -> 89 -> 145 -> 42 -> 
