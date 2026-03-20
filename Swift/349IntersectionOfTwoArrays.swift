class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums1Set = Set(nums1)
        var nums2Set = Set(nums2)
        var nums2UniqueArr = Array(nums2Set)
        var res = [Int]()
        for num in nums2UniqueArr {
            if nums1Set.contains(num) {
                res.append(num)
            }
        }
        return res
    }
}
