class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let arr = Array(s)

        // Dictionary of character and last seen index
        var lastSeen = [Character: Int] ()
        var l = 0, best = 0

        for r in 0..<arr.count{
            let ch = arr[r] // Get the character

            // if its in the dict, we update left
            if let foundIndex = lastSeen[ch]{
                l = max(l, foundIndex + 1)
            }
            // update dict
            lastSeen[ch] = r
            let range = r - l + 1
            best = max(best, range)
        }
        return best
    }
}
