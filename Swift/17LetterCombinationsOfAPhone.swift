class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty {return []}
        var letterCombos = [[Character]]()
        var res = [String]()
        for numC in digits {
            let digit = Int(String(numC))
            print(digit)
            switch digit {
                case 2:
                    letterCombos.append(["a","b","c"])
                case 3:
                    letterCombos.append(["d","e","f"])
                case 4: 
                    letterCombos.append(["g","h","i"])
                case 5:
                    letterCombos.append(["j","k","l"])
                case 6:
                    letterCombos.append(["m","n","o"])  
                case 7:
                    letterCombos.append(["p","q","r", "s"])
                case 8:
                    letterCombos.append(["t","u","v"])
                case 9:
                    letterCombos.append(["w","x","y", "z"])
                default:
                    break
            }
        }

        recursion(letterCombos, 0, "", &res)
        return res
    }

    func recursion(_ letterCombos: [[Character]], _ index: Int ,_ current: String, _ res: inout [String] ) {
        if index == letterCombos.count {
            res.append(current)
            return
        }
        for c in letterCombos[index] {
            recursion(letterCombos, index + 1, current + String(c), &res)
        }
    }
}
