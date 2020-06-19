# https://leetcode.com/problems/maximum-binary-tree/

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def constructMaximumBinaryTree(self, nums: List[int]) -> TreeNode:
        return self.createSubTree(nums)
    
    def createSubTree(self, subArr: List[int]) -> TreeNode:
        if len(subArr) == 0:
            return None
        elif len(subArr) == 1:
            return TreeNode(subArr[0])
        
        rootVal = max(subArr)
        rootIdx = subArr.index(rootVal)
        
        left = self.createSubTree(subArr[:rootIdx])
        right = self.createSubTree(subArr[(rootIdx+1):])
        return TreeNode(rootVal, left, right)
        