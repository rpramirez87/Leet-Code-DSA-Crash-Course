//: # Two Pointers and Sliding Window Challenges
//: Chapter: 02-Arrays-and-Strings
//:
//: Practice problems for two pointers and sliding window.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

// MARK: - Two Pointers

/*
 Challenge 1: 344. Reverse String

 Reverse an array of characters in place, using O(1) extra memory.

 Input: s = ["h","e","l","l","o"]       Output: ["o","l","l","e","h"]
 Input: s = ["H","a","n","n","a","h"]   Output: ["h","a","n","n","a","H"]
 */
func reverseString(_ s: inout [Character]) {
    // TODO: implement
}

/*
 Challenge 2: 977. Squares of a Sorted Array

 Given `nums` sorted in non-decreasing order, return the squares of each number, also sorted.
 Try for O(n) instead of squaring and sorting.

 Input: nums = [-4,-1,0,3,10]   Output: [0,1,9,16,100]
 Input: nums = [-7,-3,2,3,11]   Output: [4,9,9,49,121]
 */
func sortedSquares(_ nums: [Int]) -> [Int] {
    // TODO: implement
    return []
}

/*
 Challenge 3: 557. Reverse Words in a String III

 Reverse the characters of each word in the sentence, keeping the spaces and word order.

 Input: s = "Let's take LeetCode contest"   Output: "s'teL ekat edoCteeL tsetnoc"
 Input: s = "Mr Ding"                       Output: "rM gniD"
 */
func reverseWords(_ s: String) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 4: 917. Reverse Only Letters

 Reverse only the English letters of `s`; every other character stays where it is.

 Input: s = "ab-cd"                  Output: "dc-ba"
 Input: s = "a-bC-dEf-ghIj"          Output: "j-Ih-gfE-dCba"
 Input: s = "Test1ng-Leet=code-Q!"   Output: "Qedo1ct-eeLg=ntse-T!"
 */
func reverseOnlyLetters(_ s: String) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 5: 2000. Reverse Prefix of Word

 Reverse the part of `word` from index 0 up to and including the first occurrence of `ch`.
 If `ch` isn't in word, return word unchanged.

 Input: word = "abcdefd", ch = "d"   Output: "dcbaefd"
 Input: word = "xyxzxe", ch = "z"    Output: "zxyxxe"
 Input: word = "abcd", ch = "z"      Output: "abcd"
 */
func reversePrefix(_ word: String, _ ch: Character) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 6: 283. Move Zeroes

 Move all 0s to the end of `nums` in place, keeping the relative order of the non-zero elements.

 Input: nums = [0,1,0,3,12]   Output: [1,3,12,0,0]
 Input: nums = [0]            Output: [0]
 */
func moveZeroes(_ nums: inout [Int]) {
    // TODO: implement
}

// MARK: - Sliding Window

/*
 Challenge 7: 643. Maximum Average Subarray I

 Find the contiguous subarray of length k with the maximum average, and return that average.

 Input: nums = [1,12,-5,-6,50,3], k = 4   Output: 12.75   ((12 - 5 - 6 + 50) / 4)
 Input: nums = [5], k = 1                 Output: 5.0
 */
func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    // TODO: implement
    return 0
}

/*
 Challenge 8: 1004. Max Consecutive Ones III

 Given a binary array `nums`, return the maximum number of consecutive 1s if you can flip
 at most k 0s.

 Input: nums = [1,1,1,0,0,0,1,1,1,1,0], k = 2                     Output: 6
 Input: nums = [0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], k = 3     Output: 10
 */
func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 9: 209. Minimum Size Subarray Sum

 Given positive integers `nums` and a `target`, return the minimal length of a subarray whose sum
 is >= target, or 0 if there is none.

 Input: target = 7, nums = [2,3,1,2,4,3]       Output: 2   ([4,3])
 Input: target = 4, nums = [1,4,4]             Output: 1
 Input: target = 11, nums = [1,1,1,1,1,1,1,1]  Output: 0
 */
func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 10: 1456. Maximum Number of Vowels in a Substring of Given Length

 Return the maximum number of vowels (a, e, i, o, u) in any substring of `s` of length k.

 Input: s = "abciiidef", k = 3   Output: 3   ("iii")
 Input: s = "aeiou", k = 2       Output: 2
 Input: s = "leetcode", k = 3    Output: 2
 */
func maxVowels(_ s: String, _ k: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 11: 1208. Get Equal Substrings Within Budget

 Changing s[i] to t[i] costs |s[i] - t[i]| (difference of ASCII values). With at most `maxCost`,
 return the maximum length of a substring of s you can change to match the same substring of t.

 Input: s = "abcd", t = "bcdf", maxCost = 3   Output: 3
 Input: s = "abcd", t = "cdef", maxCost = 3   Output: 1
 Input: s = "abcd", t = "acde", maxCost = 0   Output: 1
 */
func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
    // TODO: implement
    return 0
}

// MARK: - Tests

var hello: [Character] = ["h", "e", "l", "l", "o"]
reverseString(&hello)
check(hello, ["o", "l", "l", "e", "h"], "reverse string 1")
var hannah: [Character] = ["H", "a", "n", "n", "a", "h"]
reverseString(&hannah)
check(hannah, ["h", "a", "n", "n", "a", "H"], "reverse string 2")

check(sortedSquares([-4, -1, 0, 3, 10]), [0, 1, 9, 16, 100], "sorted squares 1")
check(sortedSquares([-7, -3, 2, 3, 11]), [4, 9, 9, 49, 121], "sorted squares 2")

check(reverseWords("Let's take LeetCode contest"), "s'teL ekat edoCteeL tsetnoc", "reverse words 1")
check(reverseWords("Mr Ding"), "rM gniD", "reverse words 2")

check(reverseOnlyLetters("ab-cd"), "dc-ba", "reverse only letters 1")
check(reverseOnlyLetters("a-bC-dEf-ghIj"), "j-Ih-gfE-dCba", "reverse only letters 2")
check(reverseOnlyLetters("Test1ng-Leet=code-Q!"), "Qedo1ct-eeLg=ntse-T!", "reverse only letters 3")

check(reversePrefix("abcdefd", "d"), "dcbaefd", "reverse prefix 1")
check(reversePrefix("xyxzxe", "z"), "zxyxxe", "reverse prefix 2")
check(reversePrefix("abcd", "z"), "abcd", "reverse prefix 3")

var zeroes = [0, 1, 0, 3, 12]
moveZeroes(&zeroes)
check(zeroes, [1, 3, 12, 0, 0], "move zeroes 1")
var singleZero = [0]
moveZeroes(&singleZero)
check(singleZero, [0], "move zeroes 2")

check(findMaxAverage([1, 12, -5, -6, 50, 3], 4), 12.75, "max average 1")
check(findMaxAverage([5], 1), 5.0, "max average 2")

check(longestOnes([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2), 6, "max consecutive ones 1")
check(longestOnes([0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3), 10, "max consecutive ones 2")

check(minSubArrayLen(7, [2, 3, 1, 2, 4, 3]), 2, "min size subarray 1")
check(minSubArrayLen(4, [1, 4, 4]), 1, "min size subarray 2")
check(minSubArrayLen(11, [1, 1, 1, 1, 1, 1, 1, 1]), 0, "min size subarray 3")

check(maxVowels("abciiidef", 3), 3, "max vowels 1")
check(maxVowels("aeiou", 2), 2, "max vowels 2")
check(maxVowels("leetcode", 3), 2, "max vowels 3")

check(equalSubstring("abcd", "bcdf", 3), 3, "equal substrings 1")
check(equalSubstring("abcd", "cdef", 3), 1, "equal substrings 2")
check(equalSubstring("abcd", "acde", 0), 1, "equal substrings 3")
