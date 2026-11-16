//: # Checking for Existence
//: Chapter: 03-Hashing

import Foundation

/*
 Example 1: Two Sum

 Given an array of integers nums and an integer target, return indices of two numbers such that they add up to target. You cannot use the same index twice.
 
 */
// Two Sum — O(n) with a dictionary of value -> index
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var seen = [Int: Int]()
    
    for (index, number) in nums.enumerated() {
        if let requiredIndex = seen[target - number] {
            return [requiredIndex, index]
        }
        seen[number] = index
    }
    return []
}

/*
 Example 2: 2351. First Letter to Appear Twice

 Given a string s, return the first character to appear twice. It is guaranteed that the input will have a duplicate character.
 */
// First letter to appear twice
func repeatedCharacter(_ s: String) -> Character {
    var seen = Set<Character>()
    for character in s {
        if seen.contains(character) {
            return character
        }
        seen.insert(character)
    }
    fatalError("Input is guaranteed to contain a repeated letter")
}

/*
 Example 3: Given an integer array nums, find all the numbers x in nums that satisfy the following: x + 1 is not in nums, and x - 1 is not in nums.

 If a valid number x appears multiple times, you only need to include it in the answer once.
 */
// Numbers with no neighbor (x - 1 and x + 1 both absent)
func findNumbers(_ nums: [Int]) -> [Int] {
    var answer = Set<Int>()
    for num in nums {
        if !nums.contains(num - 1) && !nums.contains(num + 1) {
            answer.insert(num)
        }
    }
    return Array(answer)
}

check(twoSum([5, 2, 7, 10, 3, 9], 8), [0, 4], "two sum")
check(repeatedCharacter("abccbaacz"), "c", "repeated character")

// Sorted because set iteration order isn't guaranteed
check(findNumbers([5, 5, 1, 2, 3, 7, 8, 10]).sorted(), [5, 10], "find numbers")
check(findNumbers([]), [], "find numbers (empty)")
