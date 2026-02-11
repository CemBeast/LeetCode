class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard !nums.isEmpty else {return 0}

        var writeIndex = 1
        for i in 1..<nums.count {
            if nums[i] != nums[i - 1]{
                // they are different
                nums[writeIndex] = nums[i]
                writeIndex += 1
            }
        }
        return writeIndex
    }
}
