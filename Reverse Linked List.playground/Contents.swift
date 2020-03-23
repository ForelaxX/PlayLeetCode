
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
        
        let reversedNextLinkedList = reverseList(head?.next)
        reversedNextLinkedList?.next = head
        return head
    }
}


