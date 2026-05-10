/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)  // This stays at the start
        var current1 = l1, current2 = l2 
        var current = dummy      // This moves as we add nodes
        var carry = 0
        while let node1 = current1, let node2 = current2 {
            let sum = node1.val + node2.val + carry
            if sum < 10 {
                current.next = ListNode(sum)
                carry = 0
            } else {
                // > 10 so we get the ? 10 to insert but we must 
                // carry over the one to next
                let digit = sum % 10
                current.next = ListNode(digit)
                carry = 1
            }
            current = current.next!   
            current1 = node1.next
            current2 = node2.next
        }
        while let node1 = current1 {
            let sum = node1.val + carry
            if sum < 10 {
                current.next = ListNode(sum)
                carry = 0
            } else {
                // > 10 so we get the ? 10 to insert but we must 
                // carry over the one to next
                let digit = sum % 10
                current.next = ListNode(digit)
                carry = 1
            }
            current = current.next!
            current1 = node1.next
        }
        while let node2 = current2 {
            let sum = node2.val + carry
            if sum < 10 {
                current.next = ListNode(sum)
                carry = 0
            } else {
                // > 10 so we get the ? 10 to insert but we must 
                // carry over the one to next
                let digit = sum % 10
                current.next = ListNode(digit)
                carry = 1
            }
            current = current.next!
            current2 = node2.next
        }
        if carry > 0 {
            current.next = ListNode(carry)
        }
        
        return dummy.next
        
    }
}
