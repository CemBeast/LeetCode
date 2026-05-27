class Solution {
    func numRookCaptures(_ board: [[Character]]) -> Int {
        var res = 0
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if board[i][j] == "R" {
                    // found the rook, so we look everywhere above/below, right left
                    var u = j, d = j, r = i, l = i
                    while u >= 0 {
                        if board[u][j] == "p" {
                            res += 1
                            break
                        } else if board[u][j] == "B" {
                            break
                        }
                        u -= 1
                    }
                    while d < board.count {
                        if board[d][j] == "p" {
                            res += 1
                            break
                        } else if board[d][j] == "B" {
                            break
                        }
                        d += 1
                    }
                    while l >= 0 {
                        if board[i][l] == "p" {
                            res += 1
                            break
                        } else if board[i][l] == "B" {
                            break
                        }
                        l -= 1
                    }
                    while r < board.count {
                        if board[i][r] == "p" {
                            res += 1
                            break
                        } else if board[i][r] == "B" {
                            break
                        }
                        r += 1
                    }
                }
            }
        }

        return res
    }
}
