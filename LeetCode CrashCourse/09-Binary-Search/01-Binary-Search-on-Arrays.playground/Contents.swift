//: # Binary Search on Arrays
//: Chapter: 09-Binary-Search
import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    // TODO: implement
    return 0
}

// Leftmost insertion point (like Python's bisect_left)
func lowerBound(_ nums: [Int], _ target: Int) -> Int {
    // TODO: implement
    return 0
}

check(search([-1, 0, 3, 5, 9, 12], 9), 4, "found 9")
check(search([-1, 0, 3, 5, 9, 12], 2), -1, "missing 2")
check(lowerBound([1, 2, 2, 2, 5], 2), 1, "lower bound of 2")
