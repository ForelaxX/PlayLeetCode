//: Playground - noun: a place where people can play
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int, next: ListNode?) {
        self.val = val
        self.next = next
    }
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let _ = l1, let _ = l2 else {
            return nil
        }
        let rtrListNode = ListNode.init(0)

        var current1 = l1
        var current2 = l2
        var currentListNode : ListNode? = rtrListNode
        var carryFlag = 0

        while current1 != nil || current2 != nil {
            // 本次循环先加数
            let num1 = current1 != nil ? current1!.val : 0
            let num2 = current2 != nil ? current2!.val : 0
            var sum = num1 + num2 + carryFlag
            // 然后记录进位，得到最终应该放到新 node 上的 sum
            carryFlag = sum / 10
            sum %= 10
            // 给当前的节点赋值，同时还要考虑下一个节点是不是空
            currentListNode?.val = sum
            currentListNode?.next = carryFlag == 1 || current1?.next != nil || current2?.next != nil ? ListNode(0) : nil
            // 移动对三个节点的指向
            currentListNode = currentListNode?.next
            current1 = current1?.next
            current2 = current2?.next
        }
        return rtrListNode
    }
    
    
}

var listNode1 : ListNode? = ListNode(2, next: ListNode(4, next: ListNode(3, next: nil)))
var listNode2 : ListNode? = ListNode(5, next: ListNode(6, next: ListNode(4, next: nil)))

var s = Solution()
var testResult = s.addTwoNumbers(listNode1, listNode2)
func printList(listNode: ListNode?) {
    var next = listNode
    repeat {
        print(next!.val)
        next = next?.next
    } while next != nil
}
printList(listNode: testResult)
