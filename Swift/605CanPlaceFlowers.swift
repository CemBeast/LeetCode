class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var flowersLeft = n
        var newBed = flowerbed
        
        if flowerbed.count == 1 && flowerbed[0] == 0 && n <= 1 {
            return true
        }

        for i in 0..<newBed.count {
            if newBed[i] == 1 {
                // cant plant bc its taken
                continue
            }
            // check start of array
            if i == 0 {
                // first spot is valid - index 1 is empty
                if newBed[i + 1] == 0 {
                    flowersLeft -= 1
                    newBed[i] = 1
                    continue
                } else {
                    // index 1 is full - invalid
                    continue
                }
            }
            // check last spot
            if i == (newBed.count - 1) {
                // valid spot to plant then we break loop
                if newBed[i - 1] == 0 {
                    flowersLeft -= 1
                    break
                }
                break
            }
            if newBed[i - 1] == 0 && newBed[i + 1] == 0 {
                flowersLeft -= 1
                newBed[i] = 1
            }
        }

        return flowersLeft <= 0
    }
}
