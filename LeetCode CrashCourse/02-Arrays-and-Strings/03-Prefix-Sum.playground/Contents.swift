//: # Prefix Sum
//: Chapter: 02-Arrays-and-Strings
import Foundation

// For each query [x, y], is sum(nums[x...y]) < limit?
func answerQueries(_ nums: [Int], _ queries: [[Int]], _ limit: Int) -> [Bool] {
    // TODO: implement
    return []
}

check(answerQueries([1, 6, 3, 2, 7, 2], [[0, 3], [2, 5], [2, 4]], 13),
      [true, false, true], "range sum queries")
