//: # Stacks and Queues Challenges
//: Chapter: 05-Stacks-and-Queues
//:
//: Practice problems for stacks, queues and monotonic stacks/queues.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

/*
 Challenge 1: 20. Valid Parentheses

 Given a string `s` of '(', ')', '{', '}', '[' and ']', return true if it is valid:
 every open bracket is closed by the same type of bracket, in the correct order.

 Input: s = "()[]{}"   Output: true
 Input: s = "(]"       Output: false
 Input: s = "([)]"     Output: false
 */
func isValid(_ s: String) -> Bool {
    // TODO: implement
    return false
}

/*
 Challenge 2: 1047. Remove All Adjacent Duplicates In String

 Repeatedly remove two adjacent equal letters from `s` until no more can be removed.
 Return the final string.

 Input: s = "abbaca"   Output: "ca"
 Input: s = "azxxzy"   Output: "ay"
 */
func removeDuplicates(_ s: String) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 3: 844. Backspace String Compare

 Given strings `s` and `t`, return true if they are equal when both are typed into empty
 text editors. '#' means a backspace. Backspacing an empty text keeps it empty.

 Input: s = "ab#c", t = "ad#c"   Output: true   (both become "ac")
 Input: s = "ab##", t = "c#d#"   Output: true   (both become "")
 Input: s = "a#c",  t = "b"      Output: false
 */
func backspaceCompare(_ s: String, _ t: String) -> Bool {
    // TODO: implement
    return false
}

/*
 Challenge 4: 71. Simplify Path

 Given an absolute Unix-style path, return its simplified canonical path:
 - starts with a single '/', directories separated by a single '/'
 - no trailing '/', no '.' or '..' (a '..' goes up one level; at the root it stays at the root)

 Input: path = "/home/"             Output: "/home"
 Input: path = "/home//foo/"        Output: "/home/foo"
 Input: path = "/a/./b/../../c/"    Output: "/c"
 */
func simplifyPath(_ path: String) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 5: 1544. Make The String Great

 A string is "good" if it has no two adjacent characters where one is the lowercase
 and the other the uppercase of the same letter (like "aA" or "Aa").
 Keep removing such pairs until the string is good, and return it.

 Input: s = "leEeetcode"   Output: "leetcode"
 Input: s = "abBAcC"       Output: ""
 Input: s = "s"            Output: "s"
 */
func makeGood(_ s: String) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 6: 346. Moving Average from Data Stream

 Given a stream of integers and a window size, calculate the moving average
 of the last `size` values.

 MovingAverage(3): next(1) = 1.0, next(10) = 5.5, next(3) = 4.66667, next(5) = 6.0
 */
struct MovingAverage {
    // TODO: add storage

    init(_ size: Int) {
        // TODO: implement
    }

    mutating func next(_ val: Int) -> Double {
        // TODO: implement
        return 0
    }
}

/*
 Challenge 7: 649. Dota2 Senate

 Senators from two parties, Radiant ('R') and Dire ('D'), vote in rounds in the order of `senate`.
 On their turn a senator can ban one senator of the other party, removing them for good.
 When only one party remains it wins. Return "Radiant" or "Dire".

 Input: senate = "RD"    Output: "Radiant"
 Input: senate = "RDD"   Output: "Dire"
 */
func predictPartyVictory(_ senate: String) -> String {
    // TODO: implement
    return ""
}

/*
 Challenge 8: 739. Daily Temperatures

 Given daily `temperatures`, return `answer` where answer[i] is how many days after day i
 you have to wait for a warmer temperature, or 0 if there is no such day.

 Input: temperatures = [73,74,75,71,69,72,76,73]   Output: [1,1,4,2,1,1,0,0]
 Input: temperatures = [30,40,50,60]               Output: [1,1,1,0]
 */
func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    // TODO: implement
    return []
}

/*
 Challenge 9: 496. Next Greater Element I

 `nums1` is a subset of `nums2` (all values distinct). For each x in nums1, find the first
 number to the right of x in nums2 that is greater than x, or -1 if there is none.

 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]   Output: [-1,3,-1]
 Input: nums1 = [2,4],   nums2 = [1,2,3,4]   Output: [3,-1]
 */
func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    // TODO: implement
    return []
}

/*
 Challenge 10: 901. Online Stock Span

 The span of today's stock price is the number of consecutive days (ending today, going back)
 on which the price was less than or equal to today's price.

 next(100)=1, next(80)=1, next(60)=1, next(70)=2, next(60)=1, next(75)=4, next(85)=6
 */
struct StockSpanner {
    // TODO: add storage

    mutating func next(_ price: Int) -> Int {
        // TODO: implement
        return 0
    }
}

/*
 Challenge 11: 239. Sliding Window Maximum

 Given `nums` and a window of size `k` sliding from left to right, return the maximum
 of each window.

 Input: nums = [1,3,-1,-3,5,3,6,7], k = 3   Output: [3,3,5,5,6,7]
 Input: nums = [1], k = 1                   Output: [1]
 */
func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    // TODO: implement
    return []
}

// MARK: - Tests

check(isValid("()"), true, "valid parentheses 1")
check(isValid("()[]{}"), true, "valid parentheses 2")
check(isValid("(]"), false, "valid parentheses 3")
check(isValid("([)]"), false, "valid parentheses 4")
check(isValid("{[]}"), true, "valid parentheses 5")
check(isValid("("), false, "valid parentheses 6")

check(removeDuplicates("abbaca"), "ca", "adjacent duplicates 1")
check(removeDuplicates("azxxzy"), "ay", "adjacent duplicates 2")

check(backspaceCompare("ab#c", "ad#c"), true, "backspace compare 1")
check(backspaceCompare("ab##", "c#d#"), true, "backspace compare 2")
check(backspaceCompare("a#c", "b"), false, "backspace compare 3")

check(simplifyPath("/home/"), "/home", "simplify path 1")
check(simplifyPath("/../"), "/", "simplify path 2")
check(simplifyPath("/home//foo/"), "/home/foo", "simplify path 3")
check(simplifyPath("/a/./b/../../c/"), "/c", "simplify path 4")

check(makeGood("leEeetcode"), "leetcode", "make good 1")
check(makeGood("abBAcC"), "", "make good 2")
check(makeGood("s"), "s", "make good 3")

var movingAverage = MovingAverage(3)
check([1, 10, 3, 5].map { movingAverage.next($0) }, [1.0, 5.5, 14.0 / 3.0, 6.0], "moving average")

check(predictPartyVictory("RD"), "Radiant", "dota2 senate 1")
check(predictPartyVictory("RDD"), "Dire", "dota2 senate 2")
check(predictPartyVictory("DDRRR"), "Dire", "dota2 senate 3")

check(dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]), [1, 1, 4, 2, 1, 1, 0, 0], "daily temperatures 1")
check(dailyTemperatures([30, 40, 50, 60]), [1, 1, 1, 0], "daily temperatures 2")
check(dailyTemperatures([30, 60, 90]), [1, 1, 0], "daily temperatures 3")

check(nextGreaterElement([4, 1, 2], [1, 3, 4, 2]), [-1, 3, -1], "next greater element 1")
check(nextGreaterElement([2, 4], [1, 2, 3, 4]), [3, -1], "next greater element 2")

var spanner = StockSpanner()
check([100, 80, 60, 70, 60, 75, 85].map { spanner.next($0) }, [1, 1, 1, 2, 1, 4, 6], "stock spanner")

check(maxSlidingWindow([1, 3, -1, -3, 5, 3, 6, 7], 3), [3, 3, 5, 5, 6, 7], "sliding window max 1")
check(maxSlidingWindow([1], 1), [1], "sliding window max 2")
check(maxSlidingWindow([9, 8, 7, 6], 2), [9, 8, 7], "sliding window max 3")
