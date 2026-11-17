//: # Backtracking Challenges
//: Chapter: 10-Backtracking
//:
//: Practice problems for backtracking.
//: Answers that may come back "in any order" are sorted in the tests before comparing.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

/*
 Challenge 1: 46. Permutations

 Given an array of distinct integers, return all possible permutations, in any order.

 Input: nums = [1,2,3]   Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
 Input: nums = [1]       Output: [[1]]
 */
func permute(_ nums: [Int]) -> [[Int]] {
    // TODO: implement
    return []
}

/*
 Challenge 2: 78. Subsets

 Given an array of unique integers, return all possible subsets (the power set), in any order.

 Input: nums = [1,2,3]   Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
 Input: nums = [0]       Output: [[],[0]]
 */
func subsets(_ nums: [Int]) -> [[Int]] {
    // TODO: implement
    return []
}

/*
 Challenge 3: 77. Combinations

 Given n and k, return all combinations of k numbers chosen from 1...n, in any order.

 Input: n = 4, k = 2   Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
 Input: n = 1, k = 1   Output: [[1]]
 */
func combine(_ n: Int, _ k: Int) -> [[Int]] {
    // TODO: implement
    return []
}

/*
 Challenge 4: 17. Letter Combinations of a Phone Number

 Given a string of digits 2-9, return all letter combinations they could represent on a phone
 keypad (2 = "abc", 3 = "def", ..., 7 = "pqrs", 9 = "wxyz"), in any order.

 Input: digits = "23"   Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
 Input: digits = ""     Output: []
 */
func letterCombinations(_ digits: String) -> [String] {
    // TODO: implement
    return []
}

/*
 Challenge 5: 22. Generate Parentheses

 Given n pairs of parentheses, generate all combinations of well-formed parentheses.

 Input: n = 3   Output: ["((()))","(()())","(())()","()(())","()()()"]
 Input: n = 1   Output: ["()"]
 */
func generateParenthesis(_ n: Int) -> [String] {
    // TODO: implement
    return []
}

/*
 Challenge 6: 967. Numbers With Same Consecutive Differences

 Return all n-digit integers (no leading zeros) where every two consecutive digits differ by exactly k.
 Any order.

 Input: n = 3, k = 7   Output: [181,292,707,818,929]
 Input: n = 2, k = 1   Output: [10,12,21,23,32,34,43,45,54,56,65,67,76,78,87,89,98]
 */
func numsSameConsecDiff(_ n: Int, _ k: Int) -> [Int] {
    // TODO: implement
    return []
}

/*
 Challenge 7: 216. Combination Sum III

 Find all combinations of k distinct numbers from 1-9 that sum to n. Each number is used at most once.
 Return them in any order.

 Input: k = 3, n = 7   Output: [[1,2,4]]
 Input: k = 3, n = 9   Output: [[1,2,6],[1,3,5],[2,3,4]]
 Input: k = 4, n = 1   Output: []
 */
func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
    // TODO: implement
    return []
}

/*
 Challenge 8: 79. Word Search

 Given a grid of characters and a `word`, return true if the word can be built from letters of
 horizontally or vertically adjacent cells. A cell may not be used more than once.

 Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"   Output: true
 Input: same board, word = "SEE"    Output: true
 Input: same board, word = "ABCB"   Output: false
 */
func exist(_ board: [[Character]], _ word: String) -> Bool {
    // TODO: implement
    return false
}

// MARK: - Tests

/// Sorts a list of lists so tests don't depend on the order your answer comes back in.
func sortedLists(_ lists: [[Int]]) -> [[Int]] {
    lists.map { $0.sorted() }.sorted { $0.lexicographicallyPrecedes($1) }
}

check(permute([1, 2, 3]).sorted { $0.lexicographicallyPrecedes($1) },
      [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]], "permutations 1")
check(permute([0, 1]).sorted { $0.lexicographicallyPrecedes($1) }, [[0, 1], [1, 0]], "permutations 2")
check(permute([1]), [[1]], "permutations 3")

check(sortedLists(subsets([1, 2, 3])), [[], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]], "subsets 1")
check(sortedLists(subsets([0])), [[], [0]], "subsets 2")

check(sortedLists(combine(4, 2)), [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]], "combinations 1")
check(combine(1, 1), [[1]], "combinations 2")

check(letterCombinations("23").sorted(), ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"], "letter combinations 1")
check(letterCombinations(""), [], "letter combinations 2")
check(letterCombinations("2").sorted(), ["a", "b", "c"], "letter combinations 3")

check(generateParenthesis(3).sorted(), ["((()))", "(()())", "(())()", "()(())", "()()()"], "generate parentheses 1")
check(generateParenthesis(1), ["()"], "generate parentheses 2")

check(numsSameConsecDiff(3, 7).sorted(), [181, 292, 707, 818, 929], "same consecutive diff 1")
check(numsSameConsecDiff(2, 1).sorted(),
      [10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98], "same consecutive diff 2")
check(numsSameConsecDiff(2, 0).sorted(), [11, 22, 33, 44, 55, 66, 77, 88, 99], "same consecutive diff 3")

check(sortedLists(combinationSum3(3, 7)), [[1, 2, 4]], "combination sum III 1")
check(sortedLists(combinationSum3(3, 9)), [[1, 2, 6], [1, 3, 5], [2, 3, 4]], "combination sum III 2")
check(combinationSum3(4, 1), [], "combination sum III 3")

let wordBoard: [[Character]] = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
check(exist(wordBoard, "ABCCED"), true, "word search 1")
check(exist(wordBoard, "SEE"), true, "word search 2")
check(exist(wordBoard, "ABCB"), false, "word search 3")
