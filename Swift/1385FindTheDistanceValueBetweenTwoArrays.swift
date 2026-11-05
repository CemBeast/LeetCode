class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var ans = arr1.count

        for i in 0..<arr1.count {
            for j in 0..<arr2.count {
                let dif = abs(arr1[i] - arr2[j])
                if dif <= d {
                    ans -= 1
                    break
                }
            }
        }

        return ans
    }
}
