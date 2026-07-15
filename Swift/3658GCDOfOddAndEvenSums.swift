class Solution {
    func gcdOfOddEvenSums(_ n: Int) -> Int {
        var sumOdd = 0, sumEven = 0
        let range = 2 * n
        for num in 1...range {
            if isOdd(num) {
                sumOdd += num
            } else {
                sumEven += num
            }
        }

        return GCD(sumEven, sumOdd)
        // could simply do return n but wheres the fun in that 
    }

    func GCD(_ sumEven: Int, _ sumOdd: Int) -> Int { 
        var large = sumEven, small = sumOdd
        while true {
            let remainder = large % small
            if remainder == 0 {
                break
            }
            large = small
            small = remainder
        }
        
        return small
    }

    func isOdd(_ n: Int) -> Bool {
        return n % 2 != 0
    }
}
