class Solution:
    def setZeroes(self, matrix: list[list[int]]) -> None:
        """
        Do not return anything, modify matrix in-place instead.
        """
        rows = set()
        cols = set()
        for r in range(len(matrix)):
            for c in range(len(matrix[r])):
                if matrix[r][c] == 0:
                    # mark the row and cols for 0's
                    rows.add(r)
                    cols.add(c)

        for r in range(len(matrix)):
            for c in range(len(matrix[r])):
                if r in rows or c in cols:
                    matrix[r][c] = 0
        
        
