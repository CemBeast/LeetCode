class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        guard let greatest = candies.max() else {return []}
        var res = [Bool]()
        for candy in candies {
            if (candy + extraCandies) >= greatest {
                res.append(true)
            } else {
                res.append(false)
            }
        }
        return res
    }
}
