class Solution {
    func maxProduct(_ n: Int) -> Int {
        var highest = 0, secondHighest = 0
        var num = n
        while num > 0 {
            let val = num % 10
            print(val)
            num = num / 10

            if val > highest {
                secondHighest = highest
                highest = val
            } else if val > secondHighest {
                secondHighest = val
            }
        }

        return highest * secondHighest
    }
}
