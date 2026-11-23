//: # Heaps Challenges
//: Chapter: 07-Heaps
//:
//: Practice problems for heaps and top k.
//: Swift has no built-in priority queue — use `Heap<Int>(<)` (min-heap) or `Heap<Int>(>)` (max-heap)
//: from `Sources/Helpers.swift`.
//: Write each solution, then run the playground — each challenge's tests are right under it.
import Foundation

/// Sorts a list of points so tests don't depend on the order your answer comes back in.
func sortedPoints(_ points: [[Int]]) -> [[Int]] {
    points.sorted { $0.lexicographicallyPrecedes($1) }
}

/*
 Challenge 1: 1046. Last Stone Weight

 Each turn, smash the two heaviest stones x <= y together: if x == y both are destroyed,
 otherwise the new stone weighs y - x. Return the weight of the last stone, or 0 if none are left.

 Input: stones = [2,7,4,1,8,1]   Output: 1
 Input: stones = [1]             Output: 1
 */
func lastStoneWeight(_ stones: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(lastStoneWeight([2, 7, 4, 1, 8, 1]), 1, "last stone weight 1")
check(lastStoneWeight([1]), 1, "last stone weight 2")
check(lastStoneWeight([2, 2]), 0, "last stone weight 3")

/*
 Challenge 2: 1962. Remove Stones to Minimize the Total

 `piles[i]` is the number of stones in pile i. Exactly k times, pick any pile and remove
 floor(piles[i] / 2) stones from it. Return the minimum possible total of stones left.

 Input: piles = [5,4,9], k = 2     Output: 12
 Input: piles = [4,3,6,7], k = 3   Output: 12
 */
func minStoneSum(_ piles: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

check(minStoneSum([5, 4, 9], 2), 12, "remove stones 1")
check(minStoneSum([4, 3, 6, 7], 3), 12, "remove stones 2")

/*
 Challenge 3: 1167. Minimum Cost to Connect Sticks

 Connecting two sticks of lengths x and y costs x + y and makes one stick of length x + y.
 Return the minimum cost to connect all the sticks into one.

 Input: sticks = [2,4,3]     Output: 14
 Input: sticks = [1,8,3,5]   Output: 30
 Input: sticks = [5]         Output: 0
 */
func connectSticks(_ sticks: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(connectSticks([2, 4, 3]), 14, "connect sticks 1")
check(connectSticks([1, 8, 3, 5]), 30, "connect sticks 2")
check(connectSticks([5]), 0, "connect sticks 3")

/*
 Challenge 4: 215. Kth Largest Element in an Array

 Return the kth largest element in `nums` (in sorted order, not the kth distinct element).

 Input: nums = [3,2,1,5,6,4], k = 2           Output: 5
 Input: nums = [3,2,3,1,2,4,5,5,6], k = 4     Output: 4
 */
func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

check(findKthLargest([3, 2, 1, 5, 6, 4], 2), 5, "kth largest 1")
check(findKthLargest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4), 4, "kth largest 2")

/*
 Challenge 5: 347. Top K Frequent Elements

 Return the k most frequent elements of `nums`, in any order.

 Input: nums = [1,1,1,2,2,3], k = 2   Output: [1,2]
 Input: nums = [1], k = 1             Output: [1]
 */
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    // TODO: implement
    return []
}

check(topKFrequent([1, 1, 1, 2, 2, 3], 2).sorted(), [1, 2], "top k frequent 1")
check(topKFrequent([1], 1), [1], "top k frequent 2")

/*
 Challenge 6: 973. K Closest Points to Origin

 Return the k points closest to the origin (0, 0) by Euclidean distance, in any order.

 Input: points = [[1,3],[-2,2]], k = 1          Output: [[-2,2]]
 Input: points = [[3,3],[5,-1],[-2,4]], k = 2   Output: [[3,3],[-2,4]]
 */
func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
    // TODO: implement
    return []
}

check(sortedPoints(kClosest([[1, 3], [-2, 2]], 1)), [[-2, 2]], "k closest 1")
check(sortedPoints(kClosest([[3, 3], [5, -1], [-2, 4]], 2)), [[-2, 4], [3, 3]], "k closest 2")

/*
 Challenge 7: 703. Kth Largest Element in a Stream

 Design a class that finds the kth largest element in a stream (sorted order, not distinct).
 `add(val)` adds val to the stream and returns the current kth largest element.

 KthLargest(3, [4,5,8,2]): add(3) = 4, add(5) = 5, add(10) = 5, add(9) = 8, add(4) = 8
 */
class KthLargest {
    // TODO: add storage

    init(_ k: Int, _ nums: [Int]) {
        // TODO: implement
    }

    func add(_ val: Int) -> Int {
        // TODO: implement
        return 0
    }
}

let kthLargest = KthLargest(3, [4, 5, 8, 2])
check([3, 5, 10, 9, 4].map { kthLargest.add($0) }, [4, 5, 5, 8, 8], "kth largest in a stream")

/*
 Challenge 8: 295. Find Median from Data Stream

 Design a class that supports adding numbers from a stream and finding the median so far.
 For an even count the median is the mean of the two middle values.

 addNum(1), addNum(2), findMedian() = 1.5, addNum(3), findMedian() = 2.0
 */
class MedianFinder {
    // TODO: add storage

    func addNum(_ num: Int) {
        // TODO: implement
    }

    func findMedian() -> Double {
        // TODO: implement
        return 0
    }
}

let medianFinder = MedianFinder()
medianFinder.addNum(1)
medianFinder.addNum(2)
check(medianFinder.findMedian(), 1.5, "median finder 1")
medianFinder.addNum(3)
check(medianFinder.findMedian(), 2.0, "median finder 2")
