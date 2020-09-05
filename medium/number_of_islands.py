# https://leetcode.com/problems/number-of-islands/

def numIslands(grid):
  global box
  box = grid
  count = 0
  
  for i in range(0, len(box)):
    for j in range(0, len(box[i])):
      if box[i][j] == "1":
        count += 1
        markIsland(i, j)

  return count

def markIsland(row, column):
  if(row == -1 or column == -1 or row >= len(box) or column >= len(box[0]) or box[row][column] != "1"):
    return None

  box[row][column] = "-1"

  markIsland(row+1, column)
  markIsland(row-1, column)
  markIsland(row, column+1)
  markIsland(row, column-1)


print(numIslands([["1","1","1","1","0"],["1","1","0","1","0"],["1","1","0","0","0"],["0","0","0","0","0"]]))