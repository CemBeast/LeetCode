class Solution {
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        var answer = 0
        for num in left..<right + 1 {
            let binary = toBinary(num)
            var count = 0
            for c in binary {
                if c == "1" {
                    count += 1
                }
            }
             if isPrime(count) {
                answer += 1
             }
        }
        return answer
    }

    func isPrime(_ num: Int) -> Bool {
        
        if num <= 1 {
            return false
        }
        if num == 2 {
            return true
        }
        if num % 2 == 0 {
            return false
        }

        var i = 3
        while i * i <= num {
            if num % i == 0 {
                return false
            }
            i += 2
        }

        return true
    }

    func toBinary(_ num: Int) -> String {
        var n = num
        var res = ""
        while n > 0 {
            let remainder = n % 2
            res.insert(Character(String(remainder)), at: res.startIndex)
            n /= 2
        }
        return res
    }
}
