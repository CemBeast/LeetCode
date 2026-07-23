class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var res = [String]()
        var targetIndex = 0, count = 1

        while targetIndex < target.count {
            if target[targetIndex] == count {
                res.append("Push")
                targetIndex += 1
            } else {
                res.append("Push")
                res.append("Pop")
            }

            count += 1
        }

        return res
    }
}
