class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var l = 0, r = height.count - 1, maxArea = 0

        while l < r {
            let tempArea = min(height[l], height[r]) * (r - l)
            maxArea = max(maxArea, tempArea)
            if height[r] > height[l] {
                l += 1
            } else {
                r -= 1
            }
        }
        return maxArea
    }
}
