class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var res = 0
        var arr = Array(columnTitle)

        for i in 0..<arr.count {
            var scale = arr.count - 1 - i
            if let ascii = arr[i].asciiValue {
                let val = Int(ascii) - 64
                let scaled = Int(pow(Double(26), Double(scale)))
                
                res += val * scaled
            }
        }

        return res
    }
}
