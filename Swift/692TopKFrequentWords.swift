class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dict = [String : Int]()

        for word in words {
            dict[word, default: 0] += 1
        }

        let sorted = dict.sorted {
            if $0.value == $1.value {
                return $0.key < $1.key
            } else {
                return $0.value > $1.value
            }
        }

        return sorted
                .prefix(k)
                .map {$0.key}
    }
}
