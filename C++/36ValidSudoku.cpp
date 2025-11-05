class Solution {
public:
    bool isValidSudoku(vector<vector<char>>& board) {
        // step 1 check each row and col and ensure no duplicates
        for(int i = 0; i < board.size(); i++){
            vector<int> countCol(9, 0);
            vector<int> countRow(9, 0);
            for(int j = 0; j < board[i].size(); j++){
                char c = board[j][i];
                if(c != '.'){
                    int num = c - '1'; //convert to digit
                    countCol[num]++;
                    if(countCol[num] > 1){
                        return false;
                    }
                }
                char r = board[i][j];
                if(r != '.'){
                    int num = r - '1'; //convert to digit
                    countRow[num]++;
                    if(countRow[num] > 1){
                        return false;
                    }
                }
            }
        }
        // now check each 3x3 section for duplicates
        vector<int> startList{0,3,6};
        for(int row: startList){
            for(int col: startList){
                if(!isThreeByThreeValid(board, row, col)){
                    return false;
                }
            }
        }
        return true;
        
    }

    bool isThreeByThreeValid(vector<vector<char>> &board, int startRow, int startCol){
        vector<int> cnt(9,0);
        for(int row = 0; row < 3; row++){
            for(int col = 0; col < 3; col++){
                char c = board[startRow + row][startCol + col];
                if(c == '.') continue;
                int num = c - '1';
                cnt[num]++;
                if(cnt[num] > 1){
                    return false;
                }
            }
        }
        return true;
    }
};