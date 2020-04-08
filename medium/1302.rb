# https://leetcode.com/problems/deepest-leaves-sum/

# Given a binary tree, return the sum of values of its deepest leaves

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}


def dfs(node, depth)
    return if node.nil?
    
    if node.left.nil? && node.right.nil?
        @deepest = depth.to_s if depth > @deepest.to_i
       if @leaves.key?(depth.to_s)
           @leaves[depth.to_s] << node.val
       else
           @leaves[depth.to_s] = [node.val]
       end
        return
    end
    
    dfs(node.left, depth + 1)
    dfs(node.right, depth + 1)
end

def deepest_leaves_sum(root)
    @leaves = {}
    @deepest = "0"
    dfs(root, 0)
    @leaves[@deepest].inject(0){|sum,x| sum + x }
end