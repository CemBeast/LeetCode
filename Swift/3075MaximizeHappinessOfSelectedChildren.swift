class Solution {
    func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
        let sorted = happiness.sorted(by: >)
        var totalHappiness = 0
        for i in 0..<k {
            // current happiness is the value - steps due to the decrement
            let currentHappiness = sorted[i] - i

            if currentHappiness <= 0 {
                break
            }

            totalHappiness += currentHappiness
        }

        return totalHappiness
    }

    
}
