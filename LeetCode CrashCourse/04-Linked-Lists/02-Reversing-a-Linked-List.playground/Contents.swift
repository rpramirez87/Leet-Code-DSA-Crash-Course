//: # Reversing a Linked List
//: Chapter: 04-Linked-Lists
import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    // TODO: implement
    return nil
}

let reversed = reverseList(ListNode.make([1, 2, 3, 4]))
print(reversed?.description ?? "nil")
check(reversed?.array, [4, 3, 2, 1], "reverse 1..4")
