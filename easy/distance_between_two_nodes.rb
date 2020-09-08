# Given a binary tree, find the distance between two nodes

# FORMULA: Dist(n1, n2) = Dist(root, n1) + Dist(root, n2) - 2*Dist(root, lca)
# dist() can be a dfs.
# to find lca, we want to keep track of the path from root to node 1 and node 2
# Iterate over the 2 paths, keeping a variable i, increase until the path differs. that'll be
# dist(root, lca)

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def path_from_root(node, target, path)
  if node.nil?
    return false, path
  end

  if node.val == target
    path << node.val
    return true, path
  end

  should_add, path = path_from_root(node.left, target, path)
  if should_add
    path << node.val
    return true, path
  end

  should_add, path = path_from_root(node.right, target, path)
  if should_add
    path << node.val
    return true, path
  end

  return false, path
end

def distance(n1, n2)
  x, path1 = path_from_root(root, n1.val
end