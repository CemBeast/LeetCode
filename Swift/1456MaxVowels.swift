class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let sArr = Array(s)
        var vowelCount = sArr.prefix(k)
            .filter {vowels.contains($0) }
            .count
        var res = vowelCount
        for i in k..<sArr.count {
            if vowels.contains(sArr[i - k]) {
                // lost a vowel
                vowelCount -= 1
            } 
            if vowels.contains(sArr[i]) {
                // gained a vowel
                vowelCount += 1
            }
            res = max(vowelCount, res)
        }

        return res
    }
}
