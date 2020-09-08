# https://leetcode.com/problems/remove-duplicates-from-sorted-list/

# Given a sorted linked list, delete all duplicates such that each element
# appear only once

def remove(prev, node)
  return if node.nil?

  if prev.val == node.val
    prev.next = node.next

    return if node.next.nil? # If the duplicate happen at the end

    return remove(prev, prev.next) # Check for duplicate between prev and next node
  end

  remove(node, node.next)
end

def delete_duplicates(head)
  return unless head
  remove(head, head.next)

  return head # O(n) runtime
end