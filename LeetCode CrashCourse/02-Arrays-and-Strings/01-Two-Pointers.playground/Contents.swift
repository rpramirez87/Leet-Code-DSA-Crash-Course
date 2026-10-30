//: # Two Pointers
//: Chapter: 02-Arrays-and-Strings
import Foundation

// Is the string a palindrome? O(n) time, O(1) space
func isPalindrome(_ s: String) -> Bool {
    // TODO: implement
    return false
}

// Sorted array: is there a pair summing to target?
func hasPairWithSum(_ nums: [Int], _ target: Int) -> Bool {
    // TODO: implement
    return false
}

check(isPalindrome("racecar"), true, "racecar")
check(isPalindrome("abcdcbb"), false, "abcdcbb")
check(hasPairWithSum([1, 2, 4, 6, 8, 9, 14, 15], 13), true, "pair sum 13")
check(hasPairWithSum([1, 2, 4], 100), false, "pair sum 100")
