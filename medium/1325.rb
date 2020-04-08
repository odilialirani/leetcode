# https://leetcode.com/problems/delete-leaves-with-a-given-value/

# Given a binary tree root and an integer target, delete all the leaf nodes with value target.
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} target
# @return {TreeNode}
def dfs_remove(node, parent, side, target)
  return if node.nil?
  
  dfs_remove(node.left, node, :left, target)
  dfs_remove(node.right, node, :right, target)
  
  if node.val == target and node.right.nil? and node.left.nil?
    if parent.nil?
      node.val = nil
    else
      if side == :left
        parent.left = nil
      else
        parent.right = nil
      end
    end
  end
end

def remove_leaf_nodes(root, target)
  return nil if root.val == target and root.right.nil? and root.left.nil?
  
  dfs_remove(root, nil, nil, target)
  root
end