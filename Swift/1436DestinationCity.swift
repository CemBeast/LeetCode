class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var map = [String: String]() // key is start, value is end
        var start = "", end = ""
        for pair in paths {
            start = pair[0]
            end = pair[1]
            map[start] = end
        }
        while map[start] != nil {
            start = map[start]!
        }

        return start
    }
}
