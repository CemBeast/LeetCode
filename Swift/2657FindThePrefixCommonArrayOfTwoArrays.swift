class Solution {
    func findThePrefixCommonArray(_ A: [Int], _ B: [Int]) -> [Int] {
        var aMap = [Int: Int](), res = [Int](), count = 0
        for i in 0..<A.count {
            aMap[A[i], default: 0] += 1 
            if aMap[A[i]] == 2 {
                count += 1
            }
            aMap[B[i], default: 0] += 1 
            if aMap[B[i]] == 2 {
                count += 1
            }

            res.append(count)
            print(aMap)
        }



        return res
    }
}
