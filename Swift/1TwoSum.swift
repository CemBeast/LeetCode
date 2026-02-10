class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var freq = [Int : Int]()
        for (i,num) in nums.enumerated() {
            let diff = target - num
            if let index = freq[diff]{
                return [index, i]
            }
            freq[num] = i
        }
        return []
    }
}
