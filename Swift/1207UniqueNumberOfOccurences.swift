class Solution {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var map = [Int:Int]()
        var unique = Set<Int>()
        for num in arr {
            map[num, default: 0] += 1
        }
        for occurence in map.values {
            if unique.contains(occurence) {
                return false
            } else {
                unique.insert(occurence)
            }
        }
        return true
    }
}
