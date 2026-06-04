class Solution {
    func totalWaviness(_ num1: Int, _ num2: Int) -> Int {
        var res = 0
        for i in num1...num2 {
            let arr = Array(String(i))
            
            if arr.count < 3 {continue}

            for j in 1..<arr.count - 1 {
                if arr[j] > arr[j - 1] && arr[j] > arr[j + 1] {
                    res += 1
                } else if arr[j] < arr[j - 1] && arr[j] < arr[j + 1]{
                    res += 1
                }
            }
        }
        return res
    }
}
