class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        // subtracting(_:) returns elements in the first set not in the second
        let ans0 = Array(set1.subtracting(set2))
        let ans1 = Array(set2.subtracting(set1))
        
        return [ans0, ans1]
    }
}

