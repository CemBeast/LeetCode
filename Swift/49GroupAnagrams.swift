class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        // dictionary with key as sorted string and values as original
        var dict = [String : [String]]()
        for word in strs {
            let key = String(word.sorted())
            if dict[key] != nil {
                // we have an anagram, add word to list
                dict[key, default: []].append(word)
            } else {
                // else set the key to array of word
                dict[key] = [word]
            }
        }
        return Array(dict.values)
    }
}
