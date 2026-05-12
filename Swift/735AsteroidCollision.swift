class Solution {
    func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack = [Int]()
        for asteroid in asteroids {
            var isDestroyed = false
            
            while !stack.isEmpty && stack.last! > 0 && asteroid < 0 {
                let absAsteroid = abs(asteroid)
                if absAsteroid > stack.last! {
                    stack.popLast()
                } else if absAsteroid == stack.last! {
                    // both break // dont append Asteroid
                    stack.popLast()
                    isDestroyed = true
                    break
                } else {
                    isDestroyed = true
                    break
                    // incoming is destroyed, dont append Asteroid
                }
            }
            if !isDestroyed {
                stack.append(asteroid)
            }
        }
        return stack
    }
}

