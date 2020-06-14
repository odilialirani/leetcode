# https://leetcode.com/problems/queries-on-a-permutation-with-key

class Solution:
  def processQueries(self, queries: List[int], m: int) -> List[int]:
    arr = []
    p = [*range(1,m+1)]
    
    for i in range(0, len(queries)):
      j = queries[i]
      arr.append(p.index(j))

      # want to move j to the front of p
      p.remove(j)
      p.insert(0,j)

    return arr