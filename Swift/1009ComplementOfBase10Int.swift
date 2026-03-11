class Solution {
    func bitwiseComplement(_ n: Int) -> Int {
        if n == 0 {return 1}

        // we want only the significant bits so we use a mask to find it
        var mask = 1
        while mask <= n {
            mask <<= 1
            // mask goes to 10 (2), 100 (4), 1000 (8) ...
        }
        // do mask - 1 to get proper bits
        // for n = 5 (101) we have mask = (1000) so sub 1
        // (mask - 1) = (111)
        // to get complement, we want XOR, if same set to 0, if different set 1
        return (mask - 1) ^ n
    }
}
