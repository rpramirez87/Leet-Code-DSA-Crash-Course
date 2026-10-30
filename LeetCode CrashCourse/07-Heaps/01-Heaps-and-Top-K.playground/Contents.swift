//: # Heaps and Top K
//: Chapter: 07-Heaps
//:
//: `Heap` lives in Sources/Helpers.swift — `Heap<Int>(<)` is a min-heap.
import Foundation

// Kth largest: keep a min-heap of size k. O(n log k)
func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

// Last Stone Weight with a max-heap
func lastStoneWeight(_ stones: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(findKthLargest([3, 2, 1, 5, 6, 4], 2), 5, "2nd largest")
check(lastStoneWeight([2, 7, 4, 1, 8, 1]), 1, "last stone weight")
