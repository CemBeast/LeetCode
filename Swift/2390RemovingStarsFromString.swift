class Solution {
    func removeStars(_ s: String) -> String {
        var stack = [Character]()
        for c in s {
            if c == "*" {
                // remove if not empty
                if !stack.isEmpty {
                    stack.popLast()
                }

            } else {
                stack.append(c)
            }
        }
        return String(stack)
    }
}
