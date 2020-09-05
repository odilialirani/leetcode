# https://leetcode.com/problems/subrectangle-queries/

class SubrectangleQueries:
  def __init__(self, rectangle):
    self.rectangle = rectangle

  def updateSubrectangle(self, row1, col1, row2, col2, newValue):
    for x in range(row1, row2 + 1):
      for y in range(col1, col2 + 1):
        self.rectangle[x][y] = newValue
    self.rectangle

  def getValue(self, row, col):
    return self.rectangle[row][col]

arr = [[1,2],[3,4]]
s = SubrectangleQueries(arr)
print(s.getValue(0,1))