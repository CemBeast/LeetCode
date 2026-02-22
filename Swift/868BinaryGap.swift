class Solution {
    func binaryGap(_ n: Int) -> Int {
        let reversedStr = toBinaryString(n)
        let str = String(reversedStr.reversed())
        print(str)
        var ans = 0
        var isCounting = false, seenOne = false
        var count = 0
        for c in str {
            if isCounting {
                count += 1
            }
            if c == "1" && !isCounting {
                // start counting
                isCounting = true
                seenOne = true
            }
            else if c == "1" && isCounting {
                isCounting = false
                ans = max(ans, count)
                count = 0
                if seenOne {
                    isCounting = true
                }
            }
 

        }
        return ans
    }
    
    func toBinaryString(_ n : Int) -> String {
        var str = ""
        var num = n
        while num > 0 {
            let r = num % 2
            str += "\(r)"
            num /= 2
        }
        return str
    }
}
