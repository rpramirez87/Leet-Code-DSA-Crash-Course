//: # Linked Lists Challenges
//: Chapter: 04-Linked-Lists
//:
//: Practice problems for fast and slow pointers and reversing a linked list.
//: Build lists with `ListNode.make([1, 2, 3])` and read them back with `.array`.
//: Write each solution, then run the playground — each challenge's tests are right under it.
import Foundation

/*
 Challenge 1: 876. Middle of the Linked List

 Given the head of a singly linked list, return the middle node.
 If there are two middle nodes, return the second one.

 Input: head = [1,2,3,4,5]     Output: [3,4,5]
 Input: head = [1,2,3,4,5,6]   Output: [4,5,6]
 */
func middleNode(_ head: ListNode?) -> ListNode? {
    // TODO: implement
    return nil
}

check(middleNode(ListNode.make([1, 2, 3, 4, 5]))?.array ?? [], [3, 4, 5], "middle node 1")
check(middleNode(ListNode.make([1, 2, 3, 4, 5, 6]))?.array ?? [], [4, 5, 6], "middle node 2")
check(middleNode(ListNode.make([1]))?.array ?? [], [1], "middle node (single)")

/*
 Challenge 2: 83. Remove Duplicates from Sorted List

 Given the head of a sorted linked list, delete all duplicates so each element appears only once.
 Return the list, still sorted.

 Input: head = [1,1,2]       Output: [1,2]
 Input: head = [1,1,2,3,3]   Output: [1,2,3]
 */
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    // TODO: implement
    return nil
}

check(deleteDuplicates(ListNode.make([1, 1, 2]))?.array ?? [], [1, 2], "remove duplicates 1")
check(deleteDuplicates(ListNode.make([1, 1, 2, 3, 3]))?.array ?? [], [1, 2, 3], "remove duplicates 2")
check(deleteDuplicates(ListNode.make([1, 1, 1]))?.array ?? [], [1], "remove duplicates 3")

/*
 Challenge 3: 206. Reverse Linked List

 Given the head of a singly linked list, reverse the list and return the new head.

 Input: head = [1,2,3,4,5]   Output: [5,4,3,2,1]
 Input: head = []            Output: []
 */
func reverseList(_ head: ListNode?) -> ListNode? {
    // TODO: implement
    return nil
}

check(reverseList(ListNode.make([1, 2, 3, 4, 5]))?.array ?? [], [5, 4, 3, 2, 1], "reverse list 1")
check(reverseList(ListNode.make([1, 2]))?.array ?? [], [2, 1], "reverse list 2")
check(reverseList(nil)?.array ?? [], [], "reverse list (empty)")

/*
 Challenge 4: 24. Swap Nodes in Pairs

 Given a linked list, swap every two adjacent nodes and return its head.
 Solve it without modifying the values in the nodes (only the nodes themselves may change).

 Input: head = [1,2,3,4]   Output: [2,1,4,3]
 Input: head = [1,2,3]     Output: [2,1,3]
 */
func swapPairs(_ head: ListNode?) -> ListNode? {
    // TODO: implement
    return nil
}

check(swapPairs(ListNode.make([1, 2, 3, 4]))?.array ?? [], [2, 1, 4, 3], "swap pairs 1")
check(swapPairs(ListNode.make([1, 2, 3]))?.array ?? [], [2, 1, 3], "swap pairs 2")
check(swapPairs(ListNode.make([1]))?.array ?? [], [1], "swap pairs (single)")

/*
 Challenge 5: 2130. Maximum Twin Sum of a Linked List

 In a linked list of even length n, node i and node (n - 1 - i) are twins.
 The twin sum is the sum of a node and its twin. Return the maximum twin sum.

 Input: head = [5,4,2,1]    Output: 6
 Input: head = [4,2,2,3]    Output: 7
 Input: head = [1,100000]   Output: 100001
 */
func pairSum(_ head: ListNode?) -> Int {
    // TODO: implement
    return 0
}

check(pairSum(ListNode.make([5, 4, 2, 1])), 6, "twin sum 1")
check(pairSum(ListNode.make([4, 2, 2, 3])), 7, "twin sum 2")
check(pairSum(ListNode.make([1, 100000])), 100001, "twin sum 3")

/*
 Challenge 6: 92. Reverse Linked List II

 Given the head of a linked list and two positions `left <= right` (1-indexed),
 reverse the nodes from position left to position right and return the list.

 Input: head = [1,2,3,4,5], left = 2, right = 4   Output: [1,4,3,2,5]
 Input: head = [5], left = 1, right = 1           Output: [5]
 */
func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
    // TODO: implement
    return nil
}

check(reverseBetween(ListNode.make([1, 2, 3, 4, 5]), 2, 4)?.array ?? [], [1, 4, 3, 2, 5], "reverse between 1")
check(reverseBetween(ListNode.make([5]), 1, 1)?.array ?? [], [5], "reverse between 2")
check(reverseBetween(ListNode.make([3, 5]), 1, 2)?.array ?? [], [5, 3], "reverse between 3")
