class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for ch in s {
            // your logic
            if ch == "(" || ch == "[" || ch == "{"{
                stack.append(ch)
            }
            else {
                guard let top = stack.last else {
                    return false
                }
                if ch == ")" && top == "(" {
                    stack.removeLast()
                }
                else if ch == "]" && top == "[" {
                    stack.removeLast()
                }
                else if ch == "}" && top == "{" {
                    stack.removeLast()
                }
                else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
