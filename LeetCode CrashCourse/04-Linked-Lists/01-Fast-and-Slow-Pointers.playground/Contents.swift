//: # Fast and Slow Pointers
//: Chapter: 04-Linked-Lists
import Foundation

func middleNode(_ head: ListNode?) -> ListNode? {
    // TODO: implement
    return nil
}

func hasCycle(_ head: ListNode?) -> Bool {
    // TODO: implement
    return false
}

let list = ListNode.make([1, 2, 3, 4, 5])
print(list!)
check(middleNode(list)?.val, 3, "middle of 1..5")
check(hasCycle(list), false, "no cycle")

let cyclic = ListNode.make([1, 2, 3])
cyclic?.next?.next?.next = cyclic   // 3 -> 1
check(hasCycle(cyclic), true, "has cycle")
