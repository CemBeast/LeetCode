class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i1 = m - 1, i2 = n - 1
        while i1 >= 0 && i2 >= 0 {
            if nums2[i2] > nums1[i1] {
                // put nums 2 at the back of nums 1
                nums1[i1 + i2 + 1] = nums2[i2]
                i2 -= 1
            } else {
                // put nums 1 at the back
                nums1[i1 + i2 + 1] = nums1[i1]
                i1 -= 1
            }
        }

        while i2 >= 0 {
            nums1[i2] = nums2[i2]
            i2 -= 1
        }
    }
}
