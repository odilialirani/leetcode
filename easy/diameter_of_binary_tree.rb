# https://leetcode.com/problems/diameter-of-binary-tree/

# Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

# Idea: the longest path will be between 2 leaves
# So we need to get a list of leaves.
# Then find the length between each leaves, and return the longest


# do a tree preorder traversal, if node.left.nil and node.right.nil, add it to the list
def getLeaves(node, leaves)

  if node.left.nil? and node.right.nil?
    leaves << node
    return leaves
  end

  if node.left
    leaves = getLeaves(node.left, leaves)
  end

  if node.right
    leaves = getLeaves(node.right, leaves)
  end

  return leaves
end

def get_depth(node)
  if node.nil?
    return 0
  end

  left_depth = get_depth(node.left)
  right_depth = get_depth(node.right)

  return 1 + [left_depth, right_depth].max
end

def diameter_of_binary_tree(root)
  leaves = getLeaves(root, [])
  depth = 1 + [get_depth(root.left), get_depth(root.right)].max

  puts(depth)
end