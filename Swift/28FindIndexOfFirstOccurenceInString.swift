class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var str = ""
        if needle.count > haystack.count {
            return -1
        }
        for i in 0...(haystack.count - needle.count) {
            if i + needle.count <= haystack.count {
                let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
                let endIndex = haystack.index(startIndex, offsetBy: needle.count)
                let sub = haystack[startIndex..<endIndex]
                str = String(sub)
            }
            if str == needle {
                return i
            }
        }
        return -1
    }
}
