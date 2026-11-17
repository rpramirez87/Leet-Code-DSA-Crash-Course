//: # Binary Search Challenges
//: Chapter: 09-Binary-Search
//:
//: Practice problems for binary search on arrays and on solution spaces.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

// MARK: - Binary Search on Arrays

/*
 Challenge 1: 704. Binary Search

 Given a sorted array `nums` and a `target`, return the index of target, or -1. Must be O(log n).

 Input: nums = [-1,0,3,5,9,12], target = 9   Output: 4
 Input: nums = [-1,0,3,5,9,12], target = 2   Output: -1
 */
func search(_ nums: [Int], _ target: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 2: 35. Search Insert Position

 Given a sorted array of distinct integers and a `target`, return the index of target if found,
 otherwise the index where it would be inserted to keep the order.

 Input: nums = [1,3,5,6], target = 5   Output: 2
 Input: nums = [1,3,5,6], target = 2   Output: 1
 Input: nums = [1,3,5,6], target = 7   Output: 4
 */
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 3: 74. Search a 2D Matrix

 Each row of `matrix` is sorted, and each row's first value is greater than the previous row's last.
 Return true if `target` is in the matrix. Must be O(log(m * n)).

 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3    Output: true
 Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13   Output: false
 */
func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    // TODO: implement
    return false
}

/*
 Challenge 4: 2300. Successful Pairs of Spells and Potions

 A spell and a potion are a successful pair if spell * potion >= success.
 Return an array where answer[i] is the number of potions that form a successful pair with spells[i].

 Input: spells = [5,1,3], potions = [1,2,3,4,5], success = 7    Output: [4,0,3]
 Input: spells = [3,1,2], potions = [8,5,8], success = 16       Output: [2,0,2]
 */
func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
    // TODO: implement
    return []
}

/*
 Challenge 5: 2389. Longest Subsequence With Limited Sum

 For each queries[i], return the maximum size of a subsequence of `nums` whose sum is <= queries[i].

 Input: nums = [4,5,2,1], queries = [3,10,21]   Output: [2,3,4]
 Input: nums = [2,3,4,5], queries = [1]         Output: [0]
 */
func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
    // TODO: implement
    return []
}

// MARK: - Binary Search on Solution Spaces

/*
 Challenge 6: 875. Koko Eating Bananas

 There are piles of bananas; the guards return in `h` hours. Each hour Koko eats up to k bananas
 from one pile. Return the minimum integer speed k that lets her eat all bananas within h hours.

 Input: piles = [3,6,7,11], h = 8          Output: 4
 Input: piles = [30,11,23,4,20], h = 5     Output: 30
 Input: piles = [30,11,23,4,20], h = 6     Output: 23
 */
func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 7: 1283. Find the Smallest Divisor Given a Threshold

 Choose a positive divisor, divide every element of `nums` by it (rounding up), and sum the results.
 Return the smallest divisor such that the sum is <= threshold.

 Input: nums = [1,2,5,9], threshold = 6          Output: 5
 Input: nums = [44,22,33,11,1], threshold = 5    Output: 44
 */
func smallestDivisor(_ nums: [Int], _ threshold: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 8: 1870. Minimum Speed to Arrive on Time

 You take trains in order; dist[i] is the length of ride i. Every train leaves on the hour,
 so you may have to wait between rides (not after the last one). Return the minimum positive
 integer speed to arrive within `hour` hours, or -1. The answer is at most 10^7.

 Input: dist = [1,3,2], hour = 6     Output: 1
 Input: dist = [1,3,2], hour = 2.7   Output: 3
 Input: dist = [1,3,2], hour = 1.9   Output: -1
 */
func minSpeedOnTime(_ dist: [Int], _ hour: Double) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 9: 410. Split Array Largest Sum

 Split `nums` into k non-empty contiguous subarrays so the largest subarray sum is as small as possible.
 Return that minimized largest sum.

 Input: nums = [7,2,5,10,8], k = 2   Output: 18   ([7,2,5] and [10,8])
 Input: nums = [1,2,3,4,5], k = 2    Output: 9
 */
func splitArray(_ nums: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 10: 1231. Divide Chocolate

 A chocolate bar has chunks with given `sweetness`. Make k cuts to share it with k friends
 (k + 1 consecutive pieces). You eat the piece with the minimum total sweetness.
 Return the maximum total sweetness you can get by cutting optimally.

 Input: sweetness = [1,2,3,4,5,6,7,8,9], k = 5   Output: 6
 Input: sweetness = [5,6,7,8,9,1,2,3,4], k = 8   Output: 1
 Input: sweetness = [1,2,2,1,2,2,1,2,2], k = 2   Output: 5
 */
func maximizeSweetness(_ sweetness: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

// MARK: - Tests

check(search([-1, 0, 3, 5, 9, 12], 9), 4, "binary search 1")
check(search([-1, 0, 3, 5, 9, 12], 2), -1, "binary search 2")

check(searchInsert([1, 3, 5, 6], 5), 2, "search insert 1")
check(searchInsert([1, 3, 5, 6], 2), 1, "search insert 2")
check(searchInsert([1, 3, 5, 6], 7), 4, "search insert 3")
check(searchInsert([1, 3, 5, 6], 0), 0, "search insert 4")

let sortedMatrix = [[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]]
check(searchMatrix(sortedMatrix, 3), true, "search 2D matrix 1")
check(searchMatrix(sortedMatrix, 13), false, "search 2D matrix 2")
check(searchMatrix(sortedMatrix, 60), true, "search 2D matrix 3")

check(successfulPairs([5, 1, 3], [1, 2, 3, 4, 5], 7), [4, 0, 3], "spells and potions 1")
check(successfulPairs([3, 1, 2], [8, 5, 8], 16), [2, 0, 2], "spells and potions 2")

check(answerQueries([4, 5, 2, 1], [3, 10, 21]), [2, 3, 4], "limited sum 1")
check(answerQueries([2, 3, 4, 5], [1]), [0], "limited sum 2")

check(minEatingSpeed([3, 6, 7, 11], 8), 4, "koko 1")
check(minEatingSpeed([30, 11, 23, 4, 20], 5), 30, "koko 2")
check(minEatingSpeed([30, 11, 23, 4, 20], 6), 23, "koko 3")

check(smallestDivisor([1, 2, 5, 9], 6), 5, "smallest divisor 1")
check(smallestDivisor([44, 22, 33, 11, 1], 5), 44, "smallest divisor 2")

check(minSpeedOnTime([1, 3, 2], 6), 1, "min speed 1")
check(minSpeedOnTime([1, 3, 2], 2.7), 3, "min speed 2")
check(minSpeedOnTime([1, 3, 2], 1.9), -1, "min speed 3")

check(splitArray([7, 2, 5, 10, 8], 2), 18, "split array 1")
check(splitArray([1, 2, 3, 4, 5], 2), 9, "split array 2")

check(maximizeSweetness([1, 2, 3, 4, 5, 6, 7, 8, 9], 5), 6, "divide chocolate 1")
check(maximizeSweetness([5, 6, 7, 8, 9, 1, 2, 3, 4], 8), 1, "divide chocolate 2")
check(maximizeSweetness([1, 2, 2, 1, 2, 2, 1, 2, 2], 2), 5, "divide chocolate 3")
