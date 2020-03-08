# Convert Binary Number in a Linked List to Integer

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Integer}
def get_array(head)
    arr = []
    while head != nil do
        arr << head.val
        head = head.next
    end
    return arr
end
def get_decimal_value(head)
    arr = get_array(head)
    sum = 0
    count = 1
    arr.each do |a|
        sum += a * (2**(arr.length - count))
        count += 1
    end
    
    return sum
end