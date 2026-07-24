class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var numStack = [Int]()
        for s in tokens {
            if s == "+" || s == "-" || s == "*" || s == "/" {
                let top = numStack.removeLast()
                let second = numStack.removeLast()
                var new = 0
                switch s {
                    case "+":
                        new = second + top
                    case "-":
                        new = second - top
                    case "/":
                        new = second / top
                    case "*":
                        new = second * top
                    default:
                        break
                }
                numStack.append(new)
            } else {
                let num = Int(s) ?? 0
                numStack.append(num)
            }

        }

        return numStack[0]
    }
}
