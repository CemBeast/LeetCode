class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        // use a dictionary with value and index,
        var dict = [Int : Int]()
        var res = false
        for (i, num) in nums.enumerated() {
            if let value = dict[num] {
                // we've seen the value before
                if abs(value - i) <= k {
                    return true
                }
            }
            dict[num] = i
        }
        return false
    }
}
