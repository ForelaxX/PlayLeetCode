
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return nil
        }
        if head?.next == nil {
            return head
        }
        
        var newHead: ListNode? = nil
        var current: ListNode? = head
        while current != nil {
            let next = current?.next
            current!.next = newHead
            newHead = current
            current = next
        }
        return newHead
    }
}


