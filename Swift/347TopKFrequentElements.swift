class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dictCount = [Int : Int]()
        var res = [Int]()

        for num in nums {
            dictCount[num, default: 0] += 1
        }

        let sortedByValue = dictCount.sorted(by: {$0.value > $1.value})

        for i in 0..<k {
            res.append(sortedByValue[i].key)
        }

        return res
    }

}
