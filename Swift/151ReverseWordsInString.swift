class Solution {
    func reverseWords(_ s: String) -> String {
        var words = s.split(separator: " ")
        words = words.reversed()
        let str = words.joined(separator: " ")
        return str
    }
}
