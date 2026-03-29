class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numsSet = Set(nums)
        var res = 0

        for num in numsSet {
            if !numsSet.contains(num - 1) { 
                // start of a sequence (no num behind this number)
                var i = 1
                // get size of sequence
                while(numsSet.contains(num + i)) {
                    i += 1
                }
                // take max of current sequence and all sequences to keep track
                res = max(i, res)
            }
        
        }
        return res
    }
}
