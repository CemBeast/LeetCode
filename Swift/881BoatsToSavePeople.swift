class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var l = 0, r = people.count - 1, boats = 0
        let people = people.sorted()

        while l <= r {
            if l == r {
                boats += 1
                break
            }
            
            if people[r] == limit {
                boats += 1
                r -= 1
            } else if people[l] + people[r] <= limit {
                boats += 1
                r -= 1 
                l += 1
            } else if people[l] + people[r] > limit {
                boats += 1
                r -= 1
            }
        }

        return boats
    }
}
