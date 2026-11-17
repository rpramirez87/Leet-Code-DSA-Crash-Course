//: # Dynamic Programming Challenges
//: Chapter: 11-Dynamic-Programming
//:
//: Practice problems for 1D and multi-dimensional dynamic programming.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

// MARK: - 1D DP

/*
 Challenge 1: 70. Climbing Stairs

 Climbing a staircase of n steps, you can take 1 or 2 steps at a time.
 Return how many distinct ways you can reach the top.

 Input: n = 2   Output: 2
 Input: n = 3   Output: 3
 */
func climbStairs(_ n: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 2: 746. Min Cost Climbing Stairs

 cost[i] is the cost of stepping on stair i; after paying you can climb 1 or 2 steps.
 You can start at index 0 or 1. Return the minimum cost to reach the top (past the last stair).

 Input: cost = [10,15,20]                         Output: 15
 Input: cost = [1,100,1,1,1,100,1,1,100,1]        Output: 6
 */
func minCostClimbingStairs(_ cost: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 3: 198. House Robber

 nums[i] is the money in house i. You can't rob two adjacent houses.
 Return the maximum amount you can rob.

 Input: nums = [1,2,3,1]     Output: 4
 Input: nums = [2,7,9,3,1]   Output: 12
 */
func rob(_ nums: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 4: 300. Longest Increasing Subsequence

 Return the length of the longest strictly increasing subsequence of nums.

 Input: nums = [10,9,2,5,3,7,101,18]   Output: 4   ([2,3,7,101])
 Input: nums = [7,7,7,7]               Output: 1
 */
func lengthOfLIS(_ nums: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 5: 2140. Solving Questions With Brainpower

 questions[i] = [points, brainpower]. Going in order, solving question i earns its points but
 you must skip the next brainpower questions; or you can skip question i.
 Return the maximum points you can earn.

 Input: questions = [[3,2],[4,3],[4,4],[2,5]]          Output: 5
 Input: questions = [[1,1],[2,2],[3,3],[4,4],[5,5]]    Output: 7
 */
func mostPoints(_ questions: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 6: 322. Coin Change

 Return the fewest coins needed to make up `amount`, or -1 if it can't be done.
 You have an unlimited number of each coin.

 Input: coins = [1,2,5], amount = 11   Output: 3
 Input: coins = [2], amount = 3        Output: -1
 Input: coins = [1], amount = 0        Output: 0
 */
func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    // TODO: implement
    return 0
}

// MARK: - Multi-Dimensional DP

/*
 Challenge 7: 1143. Longest Common Subsequence

 Return the length of the longest common subsequence of text1 and text2, or 0.

 Input: text1 = "abcde", text2 = "ace"   Output: 3
 Input: text1 = "abc", text2 = "def"     Output: 0
 */
func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 8: 62. Unique Paths

 A robot at the top-left of an m x n grid moves only right or down.
 Return how many unique paths reach the bottom-right corner.

 Input: m = 3, n = 7   Output: 28
 Input: m = 3, n = 2   Output: 3
 */
func uniquePaths(_ m: Int, _ n: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 9: 64. Minimum Path Sum

 Moving only right or down, find the path from top-left to bottom-right of `grid`
 with the minimum sum of numbers. Return that sum.

 Input: grid = [[1,3,1],[1,5,1],[4,2,1]]   Output: 7
 Input: grid = [[1,2,3],[4,5,6]]           Output: 12
 */
func minPathSum(_ grid: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 10: 931. Minimum Falling Path Sum

 A falling path starts at any cell in the first row and moves to the next row's cell directly
 below or diagonally left/right. Return the minimum sum of any falling path.

 Input: matrix = [[2,1,3],[6,5,4],[7,8,9]]   Output: 13
 Input: matrix = [[-19,57],[-40,-5]]         Output: -59
 */
func minFallingPathSum(_ matrix: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 11: 518. Coin Change II

 Return the number of combinations of coins that make up `amount` (unlimited coins of each kind).

 Input: amount = 5, coins = [1,2,5]   Output: 4
 Input: amount = 3, coins = [2]       Output: 0
 Input: amount = 10, coins = [10]     Output: 1
 */
func change(_ amount: Int, _ coins: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 12: 188. Best Time to Buy and Sell Stock IV

 prices[i] is the stock price on day i. You may complete at most k transactions
 (buy then sell; you can't hold more than one share). Return the maximum profit.

 Input: k = 2, prices = [2,4,1]           Output: 2
 Input: k = 2, prices = [3,2,6,5,0,3]     Output: 7
 */
func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
    // TODO: implement
    return 0
}

// MARK: - Tests

check(climbStairs(2), 2, "climbing stairs 1")
check(climbStairs(3), 3, "climbing stairs 2")
check(climbStairs(5), 8, "climbing stairs 3")

check(minCostClimbingStairs([10, 15, 20]), 15, "min cost stairs 1")
check(minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), 6, "min cost stairs 2")

check(rob([1, 2, 3, 1]), 4, "house robber 1")
check(rob([2, 7, 9, 3, 1]), 12, "house robber 2")

check(lengthOfLIS([10, 9, 2, 5, 3, 7, 101, 18]), 4, "LIS 1")
check(lengthOfLIS([0, 1, 0, 3, 2, 3]), 4, "LIS 2")
check(lengthOfLIS([7, 7, 7, 7]), 1, "LIS 3")

check(mostPoints([[3, 2], [4, 3], [4, 4], [2, 5]]), 5, "brainpower 1")
check(mostPoints([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]]), 7, "brainpower 2")

check(coinChange([1, 2, 5], 11), 3, "coin change 1")
check(coinChange([2], 3), -1, "coin change 2")
check(coinChange([1], 0), 0, "coin change 3")

check(longestCommonSubsequence("abcde", "ace"), 3, "LCS 1")
check(longestCommonSubsequence("abc", "abc"), 3, "LCS 2")
check(longestCommonSubsequence("abc", "def"), 0, "LCS 3")

check(uniquePaths(3, 7), 28, "unique paths 1")
check(uniquePaths(3, 2), 3, "unique paths 2")

check(minPathSum([[1, 3, 1], [1, 5, 1], [4, 2, 1]]), 7, "min path sum 1")
check(minPathSum([[1, 2, 3], [4, 5, 6]]), 12, "min path sum 2")

check(minFallingPathSum([[2, 1, 3], [6, 5, 4], [7, 8, 9]]), 13, "falling path 1")
check(minFallingPathSum([[-19, 57], [-40, -5]]), -59, "falling path 2")

check(change(5, [1, 2, 5]), 4, "coin change II 1")
check(change(3, [2]), 0, "coin change II 2")
check(change(10, [10]), 1, "coin change II 3")

check(maxProfit(2, [2, 4, 1]), 2, "stock IV 1")
check(maxProfit(2, [3, 2, 6, 5, 0, 3]), 7, "stock IV 2")
