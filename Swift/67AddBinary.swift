class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        
        var res = [Character]()
        let aChars = Array(a)
        let bChars = Array(b)

        var i = aChars.count - 1
        var j = bChars.count - 1
        var carry = 0

        while i >= 0 || j >= 0 || carry > 0 {
            
            var sum = carry

            if i >= 0 {
                if aChars[i] == "1" {
                    sum += 1
                }
                i -= 1
            }

            if j >= 0 {
                sum += bChars[j] == "1" ? 1 : 0
                j -= 1
            }

            res.append(Character(String(sum % 2)))
            carry = sum / 2

        }

        return String(res.reversed())
    }
}
