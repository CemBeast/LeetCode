class Solution {
    func createGrid(_ m: Int, _ n: Int) -> [String] {
        var res = [String]()
        for i in 0..<m {
            var str = ""
            if i == 0 {
                for j in 1..<n {
                    str += "."
                }

            } else {
                for j in 1..<n {
                    str += "#"
                }
            }

            str += "."
            res.append(str)
        }

        return res
    }
}
