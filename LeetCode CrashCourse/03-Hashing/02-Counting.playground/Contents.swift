//: # Counting
//: Chapter: 03-Hashing
import Foundation

/*
 Example 1: You are given a string s and an integer k. Find the length of the longest substring that contains at most k distinct characters.
 
 For example, given s = "eceba" and k = 2, return 3. The longest substring with at most 2 distinct characters is "ece".
 
*/

func findLongestSubstring(_ s: String, _ k: Int) -> Int {
    var arrayString = Array(s)
    var leftPtr = 0
    var answer = 0
    var distinctCharacters = [Character: Int]()
    
    for rightPtr in 0..<arrayString.count {
        distinctCharacters[arrayString[rightPtr], default: 0] += 1
        
        while distinctCharacters.count > k {
            let leftChar = arrayString[leftPtr]
            distinctCharacters[leftChar]! -= 1
            
            // Removes unique key if character count is less than 0
            if distinctCharacters[leftChar] == 0 {
                distinctCharacters[leftChar] = nil
            }
            leftPtr += 1
        }
        answer = max(answer, rightPtr - leftPtr + 1)
    }
    return answer
}

check(findLongestSubstring("eceba", 2), 3, "longest substring: eceba, k=2 -> ece")
check(findLongestSubstring("aaabbccd", 2), 5, "longest substring: aaabbccd, k=2 -> aaabb")
check(findLongestSubstring("ababab", 2), 6, "longest substring: whole string fits")
check(findLongestSubstring("abc", 1), 1, "longest substring: k=1, no repeats")

/*
 Example 2: 2248. Intersection of Multiple Arrays

 Given a 2D array nums that contains n arrays of distinct integers, return a sorted array containing all the numbers that appear in all n arrays.

 For example, given nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]], return [3, 4]. 3 and 4 are the only numbers that are in all arrays.
 */
func intersection(_ nums: [[Int]]) -> [Int] {
    var counts = [Int: Int]()
    var answer = [Int]()
    
    for numArray in nums {
        for num in numArray {
            counts[num, default: 0] += 1
        }
    }
    
    return counts.filter { $0.value == nums.count }.keys.sorted()
}
check(intersection([[3, 1, 2, 4, 5], [1, 2, 3, 4], [3, 4, 5, 6]]), [3, 4], "intersection: textbook example")
check(intersection([[1, 2, 3], [4, 5, 6]]), [], "intersection: nothing in common")
check(intersection([[5, 1, 3]]), [1, 3, 5], "intersection: single array, result sorted")


/*
 Example 3: 1941. Check if All Characters Have Equal Number of Occurrences

 Given a string s, determine if all characters have the same frequency.

 For example, given s = "abacbc", return true, because all characters appear twice. Given s = "aaabb", return false. "a" appears 3 times, "b" appears 2 times. 3 != 2.
 */
func areOccurrencesEqual(_ s: String) -> Bool {
    let charArray = Array(s)
    var count = [Character: Int]()
    for character in charArray {
        count[character, default: 0] += 1
    }
    
    let expectedCount = count.values.first
    
    for value in count.values {
        if value != expectedCount {
            return false
        }
    }
    return true
}

check(areOccurrencesEqual("abacbc"), true, "equal occurrences: abacbc")
check(areOccurrencesEqual("aaabb"), false, "equal occurrences: aaabb")
check(areOccurrencesEqual("a"), true, "equal occurrences: single character")

/*
 Example 4: 560. Subarray Sum Equals K

 Given an integer array nums and an integer k, find the number of subarrays whose sum is equal to k.

 For example, given nums = [1, 2, 1, 2, 1] and k = 3, return 4: [1, 2] twice and [2, 1] twice.
 */
func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var counts: [Int: Int] = [0: 1]
    var curr = 0
    var answer = 0
    
    for num in nums {
        curr += num
        answer += counts[curr - k, default: 0]
        counts[curr, default: 0] += 1
    }
    return answer
}

check(subarraySum([1, 2, 1, 2, 1], 3), 4, "subarray sum: textbook example")
check(subarraySum([1, -1, 1, -1], 0), 4, "subarray sum: negatives repeat a prefix sum")
check(subarraySum([1, 1, 1], 2), 2, "subarray sum: [1, 1] twice")


/*
 Example 5: 1248. Count Number of Nice Subarrays

 Given an array of positive integers nums and an integer k, find the number of subarrays with exactly k odd numbers in them.

 For example, given nums = [1, 1, 2, 1, 1] and k = 3, return 2. The subarrays with 3 odd numbers are [1, 1, 2, 1] and [1, 2, 1, 1].
 */
func numberOfSubarrays(_ nums: [Int], _ k: Int) -> Int {
    var counts: [Int: Int] = [0: 1]
    var answer = 0
    var curr = 0
    
    for num in nums {
        curr += num % 2 // tracks how many odd numbers per iteration
        answer += counts[curr - k, default: 0]
        counts[curr, default: 0] += 1
    }
    return answer
}

check(numberOfSubarrays([1, 1, 2, 1, 1], 3), 2, "nice subarrays: textbook example")
check(numberOfSubarrays([2, 4, 6], 1), 0, "nice subarrays: no odd numbers")
check(numberOfSubarrays([2, 2, 2, 1, 2, 2, 1, 2, 2, 2], 2), 16, "nice subarrays: evens around the odds")
