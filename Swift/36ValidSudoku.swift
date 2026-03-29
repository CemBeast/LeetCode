class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        // check horizontal first
        for i in 0..<board.count {
            let row = Array(board[i]).filter {$0.isNumber}
            let unique = Set(row)
            // if unique is not equal to row count we have invalid
            if unique.count != row.count {
                return false
            }
        }

        // vertical
        for i in 0..<board.count {
            var col = [Character]()
            for j in 0..<board.count {
                col.append(board[j][i])
            }
            col = col.filter{$0.isNumber}
            let unique = Set(col)
            if unique.count != col.count {
                return false
            }
        }

        // check boxes
        for r in stride(from:0, through:6, by: 3) {
            for c in stride(from:0, through:6, by:3) {
                if !checkBox(r, c, board) {
                    return false
                }
            }
        }

        return true
    }

    func checkBox(_ row: Int, _ col: Int, _ board: [[Character]]) -> Bool {

        // fill box values
        var box = [Character]()
        for r in row...(row+2) {
            for c in col...(col+2) {
                box.append(board[r][c])
            }
        }

        //compare unique with count of box
        box = box.filter {$0.isNumber}
        let boxSet = Set(box)
        if boxSet.count != box.count {
            return false
        }
        
        return true
    }
}
