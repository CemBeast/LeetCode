class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        let vowelArr = Array(s.filter {vowels.contains($0)})
        var res = Array(s), inc = 0

        for (i, c) in s.enumerated().reversed(){
            if vowels.contains(c) {
                res[i] = vowelArr[inc]
                inc += 1
            }
        }

        return String(res)
    }
}
