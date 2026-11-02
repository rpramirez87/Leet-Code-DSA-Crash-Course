//: # Prefix Sum
//: Chapter: 02-Arrays-and-Strings
import Foundation

/*
 Example 1: Given an integer array nums, an array queries where queries[i] = [x, y] and an integer limit, return a boolean array that represents the answer to each query.
 
 A query is true if the sum of the subarray from x to y is less than limit, or false otherwise.

 For example, given nums = [1, 6, 3, 2, 7, 2], queries = [[0, 3], [2, 5], [2, 4]], and limit = 13, the answer is [true, false, true]. For each query, the subarray sums are [12, 14, 12].
 */

/// Greet a user by name and age.
///
/// - Parameters:
///   - nums: array input
///   - queries: array queries where queries[i] = [x, y]
///   - limit: integer limit
/// - Returns:
///   - A query is true if the sum of the subarray from x to y is less than limit, or false otherwise.
func answerQueries(_ nums: [Int], _ queries: [[Int]], _ limit: Int) -> [Bool] {
    
    var prefixSum = [nums[0]]
    
    for i in 1..<nums.count {
        let previousSum = prefixSum[prefixSum.count - 1]
        prefixSum.append(prefixSum[prefixSum.count - 1] + nums[i])
    }
    
    var solution = [Bool]()
    for query in queries {
        var sum = 0
        let x = query[0], y = query[1]
        let curr = prefixSum[y] - prefixSum[x] + nums[x]
        solution.append(curr < limit)
    }
    return solution
}

/*
 Example 2: 2270. Number of Ways to Split Array

 Given an integer array nums, find the number of ways to split the array into two parts so that the first section has a sum greater than or equal to the sum of the second section. The second section should have at least one number.
 */
func waysToSplitArray(nums: [Int]) -> Int {
    
    let n = nums.count
    
    var prefixSum = [nums[0]]
    
    for i in 1..<n {
        prefixSum.append(prefixSum[prefixSum.count - 1] + nums[i])
    }
    
    var validCount = 0
    
    for i in 0..<(n - 1) {
        let leftSection = prefixSum[i]
        let rightSection = prefixSum[prefixSum.count - 1] - prefixSum[i]
        if leftSection >= rightSection {
            validCount += 1
        }
    }
    return validCount
    
}

func improvedWaysToSplitArray(nums: [Int]) -> Int {
    var ans = 0, leftSection = 0, total = 0
    
    for num in nums {
        total += num
    }
    
    for index in 0..<nums.count - 1 {
        leftSection += nums[index]
        let rightSection = total - leftSection
        if leftSection >= rightSection {
            ans += 1
        }
    }
    
    return ans
}

check(answerQueries([1, 6, 3, 2, 7, 2], [[0, 3], [2, 5], [2, 4]], 13),
      [true, false, true], "range sum queries")

check(waysToSplitArray(nums: [10, 4, -8, 7]), 2, "ways to split arrays")

check(improvedWaysToSplitArray(nums: [10, 4, -8, 7]), 2, "ways to split arrays")

