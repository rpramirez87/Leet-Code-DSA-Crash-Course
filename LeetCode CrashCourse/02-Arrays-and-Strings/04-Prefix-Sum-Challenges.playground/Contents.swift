//: # Prefix Sum
//: Chapter: 02-Arrays-and-Strings
import Foundation

/*
 Challenges 1:
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
 Return the running sum of nums.
 */
func runningSum(_ nums: [Int]) -> [Int] {
    
    var prefixSums = [nums[0]]
    
    for index in 1..<nums.count {
        prefixSums.append(prefixSums[prefixSums.count - 1] + nums[index])
    }
    return prefixSums
}

/*
 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 */
check(runningSum([1, 2, 3, 4]), [1, 3, 6, 10], "running sum sample 1" )

/*
 Example 2:
 
 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 */
check(runningSum([1,1,1,1,1]), [1,2,3,4,5], "running sum sample 2" )

/*
 Example 3:
 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 */

check(runningSum([3,1,2,10,1]), [3,4,6,16,17], "running sum sample 3" )

/*
 Challenges 2:

 Given an array of integers nums, you start with an initial positive value startValue.

 In each iteration, you calculate the step by step sum of startValue plus elements in nums (from left to right).

 Return the minimum positive value of startValue such that the step by step sum is never less than 1.

 */

// O(n) - Time Complexity
// O(n) - Space Complexity
func minStartValue(_ nums: [Int]) -> Int {
    
    var runningSum = [nums[0]]
    
    // retrieve running sum
    for index in 1..<nums.count {
        runningSum.append(runningSum[runningSum.count - 1] + nums[index])
    }
    
    // min start value
    // lowest running sum
    var minRunningSum = runningSum[0]
    
    for index in 1..<runningSum.count {
        minRunningSum = min(minRunningSum, runningSum[index])
    }
    
    return max(1, 1 - minRunningSum)
}

// O(n) - Time Complexity
// O(1) - Space Complexity
func lessSpaceMinStartValue(_ nums: [Int]) -> Int {
    var sum = 0
    var minSum = 0
    
    for num in nums {
        sum += num
        minSum = min(minSum, sum)
    }
    return 1 - minSum
}

/*
 Example 1:
 Input: nums = [-3,2,-3,4,2]
 Output: 5
 Explanation: If you choose startValue = 4, in the third iteration your step by step sum is less than 1.
 step by step sum
 startValue = 4 | startValue = 5 | nums
   (4 -3 ) = 1  | (5 -3 ) = 2    |  -3
   (1 +2 ) = 3  | (2 +2 ) = 4    |   2
   (3 -3 ) = 0  | (4 -3 ) = 1    |  -3
   (0 +4 ) = 4  | (1 +4 ) = 5    |   4
   (4 +2 ) = 6  | (5 +2 ) = 7    |   2
 */
check(minStartValue([-3,2,-3,4,2]), 5, "min start sample 1")

/*
 Example 2:
 Input: nums = [1,2]
 Output: 1
 Explanation: Minimum start value should be positive.
 
 */
check(minStartValue([1,2]), 1, "min start sample 2")

/*
 Example 3:
 Input: nums = [1,-2,-3]
 Output: 5
 */

check(minStartValue([1,-2,-3]), 5, "min start sample 3")

/*
 Challenge 3:
 You are given a 0-indexed array nums of n integers, and an integer k.

 The k-radius average for a subarray of nums centered at some index i with the radius k is the average of all elements in nums between the indices i - k and i + k (inclusive). If there are less than k elements before or after the index i, then the k-radius average is -1.

 Build and return an array avgs of length n where avgs[i] is the k-radius average for the subarray centered at index i.

 The average of x elements is the sum of the x elements divided by x, using integer division. The integer division truncates toward zero, which means losing its fractional part.

 For example, the average of four elements 2, 3, 1, and 5 is (2 + 3 + 1 + 5) / 4 = 11 / 4 = 2.75, which truncates to 2.
 */


func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
    
    let arrayCount = nums.count
    let windowSize = 2 * k + 1
    var answer = Array(repeating: -1, count: arrayCount)
    guard windowSize <= arrayCount else { return answer }
    
    // get running sum
    var prefix = Array(repeating: 0, count: arrayCount + 1)   // prefix[i] = sum of first i elements
    for i in 0..<arrayCount {
        prefix[i + 1] = prefix[i] + nums[i]
    }
    
    for index in k..<(arrayCount - k) {
        let sum = prefix[index + k + 1] - prefix[index - k]
        answer[index] = sum / windowSize
    }
    return answer
}

func getAveragesBySlidingWindows(_ nums: [Int], _ k: Int) -> [Int] {
    let n = nums.count
    let windowSize = 2 * k + 1
    var answer = Array(repeating: -1, count: n)
    guard windowSize <= n else { return answer }      // no full window anywhere

    // 1. Build the first window: indices 0...2k, centered at index k
    var windowSum = 0
    for i in 0..<windowSize {
        windowSum += nums[i]
    }
    answer[k] = windowSum / windowSize

    // add the element entering on the right, drop the one leaving on the left
    for right in windowSize..<n {
        windowSum += nums[right] - nums[right - windowSize]
        answer[right - k] = windowSum / windowSize
    }
    return answer
}
/*
 Example 1:
 Input: nums = [7,4,3,9,1,8,5,2,6], k = 3
 Output: [-1,-1,-1,5,4,4,-1,-1,-1]
 Explanation:
 - avg[0], avg[1], and avg[2] are -1 because there are less than k elements before each index.
 - The sum of the subarray centered at index 3 with radius 3 is: 7 + 4 + 3 + 9 + 1 + 8 + 5 = 37.
   Using integer division, avg[3] = 37 / 7 = 5.
 - For the subarray centered at index 4, avg[4] = (4 + 3 + 9 + 1 + 8 + 5 + 2) / 7 = 4.
 - For the subarray centered at index 5, avg[5] = (3 + 9 + 1 + 8 + 5 + 2 + 6) / 7 = 4.
 - avg[6], avg[7], and avg[8] are -1 because there are less than k elements after each index
 */
check(getAverages([7,4,3,9,1,8,5,2,6], 3), [-1,-1,-1,5,4,4,-1,-1,-1], "averages sample 1")

/*
 Example 2:
 Input: nums = [100000], k = 0
 Output: [100000]
 Explanation:
 - The sum of the subarray centered at index 0 with radius 0 is: 100000.
   avg[0] = 100000 / 1 = 100000.
 */

check(getAverages([100000], 0), [100000], "averages sample 2")

/*
 Example 3:
 Input: nums = [8], k = 100000
 Output: [-1]
 Explanation:
 - avg[0] is -1 because there are less than k elements before and after index 0.
 */

check(getAverages([8], 100000), [-1], "averages sample 3")

/*
 Breaking Test Case
 Input: nums =  [5, 6, 7], k = 0
 Output: [5, 6, 7]
, k = 0    [5, 0, 0]    ✗
 */
check(getAverages([5, 6, 7], 0), [5, 6, 7], "averages sample 3")

