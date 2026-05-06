class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var res = arr, high = -1
        for (i, num) in arr.enumerated().reversed() {
            res[i] = high
            high = max(num, high)
        }
        return res
    }
}
