//: # Hashing Challenges
//: Chapter: 03-Hashing
//:
//: Practice problems for checking existence and counting.
//: Write each solution, then run the playground — each challenge's tests are right under it.
import Foundation

/*
 Challenge 1: 1832. Check if the Sentence Is Pangram

 A pangram is a sentence where every letter of the English alphabet appears at least once.
 Given a string `sentence` of lowercase letters, return true if it is a pangram.

 Input: sentence = "thequickbrownfoxjumpsoverthelazydog"   Output: true
 Input: sentence = "leetcode"                              Output: false
 */
func checkIfPangram(_ sentence: String) -> Bool {
    var characterSet = Set<Character>()
    for character in sentence {
        characterSet.insert(character)
    }
    return characterSet.count == 26
}

check(checkIfPangram("thequickbrownfoxjumpsoverthelazydog"), true, "pangram 1")
check(checkIfPangram("leetcode"), false, "pangram 2")

/*
 Challenge 2: 268. Missing Number

 Given an array `nums` containing n distinct numbers in the range [0, n],
 return the only number in the range that is missing from the array.

 Input: nums = [3,0,1]              Output: 2
 Input: nums = [0,1]                Output: 2
 Input: nums = [9,6,4,2,3,5,7,0,1]  Output: 8
 */
func missingNumber(_ nums: [Int]) -> Int {
    let numsSet = Set(nums)
    for num in 0...nums.count where !numsSet.contains(num) {
        return num
    }
    return -1 // unreachable: exactly one number in 0...n is missing
}

check(missingNumber([3, 0, 1]), 2, "missing number 1")
check(missingNumber([0, 1]), 2, "missing number 2")
check(missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]), 8, "missing number 3")
check(missingNumber([1]), 0, "missing number (0 missing, single)")
check(missingNumber([2, 1, 3]), 0, "missing number (0 missing)")

/*
 Challenge 3: 1426. Counting Elements

 Given an integer array `arr`, count how many elements x there are such that x + 1 is also in arr.
 Duplicates in arr are counted separately.

 Input: arr = [1,2,3]              Output: 2   (1 and 2 are counted because 2 and 3 are in arr)
 Input: arr = [1,1,3,3,5,5,7,7]    Output: 0
 */
func countElements(_ arr: [Int]) -> Int {
    let numsSet = Set(arr)
    var answerCount = 0
    for num in arr where numsSet.contains(num + 1) {
        answerCount += 1
    }
    return answerCount
}

check(countElements([1, 2, 3]), 2, "counting elements 1")
check(countElements([1, 1, 3, 3, 5, 5, 7, 7]), 0, "counting elements 2")
check(countElements([1, 1, 2, 2]), 2, "counting elements (duplicates count)")

/*
 Challenge 4: 2225. Find Players With Zero or One Losses

 `matches[i] = [winner, loser]` means winner beat loser. Return a list `answer` of size 2 where
 - answer[0] is all players that have not lost any matches,
 - answer[1] is all players that have lost exactly one match.
 Both lists sorted in increasing order. Only consider players that played at least one match.

 Input: matches = [[1,3],[2,3],[3,6],[5,6],[5,7],[4,5],[4,8],[4,9],[10,4],[10,9]]
 Output: [[1,2,10],[4,5,7,8]]
 */
func findWinners(_ matches: [[Int]]) -> [[Int]] {
    var winCounts = [Int: Int]()
    var loseCounts = [Int: Int]()
    for match in matches {
        winCounts[match[0], default: 0] += 1
        loseCounts[match[1], default: 0] += 1
    }
    
    // undefeated = number that doesn't exist in lose counts but exists in win counts
    let undefeated = Array(winCounts.filter { !loseCounts.keys.contains($0.key) }.keys).sorted()
    
    // oneLost = number of players who only lost on
    let oneLost = Array(loseCounts.filter { $0.value == 1 }.keys).sorted()
    return [undefeated, oneLost]
}

func findWinnersOptimal(_ matches: [[Int]]) -> [[Int]] {
    var losses = [Int: Int]()
    for match in matches {
        let winner = match[0], loser = match[1]
        
        // tracks winners with no losses
        if losses[winner] == nil {
            losses[winner] = 0
        }
        losses[loser, default: 0] += 1
    }
    
    var zeroLosses = [Int]()
    var oneLosses = [Int]()
    
    for (player, count) in losses {
        if count == 0 { zeroLosses.append(player) }
        if count == 1 { oneLosses.append(player)}
    }
    
    return [zeroLosses.sorted(), oneLosses.sorted()]
}

check(findWinnersOptimal([[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [4, 9], [10, 4], [10, 9]]),
      [[1, 2, 10], [4, 5, 7, 8]], "find winners 1")
check(findWinnersOptimal([[2, 3], [1, 3], [5, 4], [6, 4]]), [[1, 2, 5, 6], []], "find winners 2")

/*
 Challenge 5: 1133. Largest Unique Number

 Given an integer array `nums`, return the largest integer that occurs only once.
 If no integer occurs once, return -1.

 Input: nums = [5,7,3,9,4,9,8,3,1]  Output: 8
 Input: nums = [9,9,8,8]            Output: -1
 */
func largestUniqueNumber(_ nums: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(largestUniqueNumber([5, 7, 3, 9, 4, 9, 8, 3, 1]), 8, "largest unique 1")
check(largestUniqueNumber([9, 9, 8, 8]), -1, "largest unique 2")

/*
 Challenge 6: 1189. Maximum Number of Balloons

 Given a string `text`, use its characters to form as many instances of the word "balloon" as possible.
 Each character can be used at most once. Return the maximum number of instances.

 Input: text = "nlaebolko"          Output: 1
 Input: text = "loonbalxballpoon"   Output: 2
 Input: text = "leetcode"           Output: 0
 */
func maxNumberOfBalloons(_ text: String) -> Int {
    // TODO: implement
    return 0
}

check(maxNumberOfBalloons("nlaebolko"), 1, "balloons 1")
check(maxNumberOfBalloons("loonbalxballpoon"), 2, "balloons 2")
check(maxNumberOfBalloons("leetcode"), 0, "balloons 3")

/*
 Challenge 7: 525. Contiguous Array

 Given a binary array `nums`, return the maximum length of a contiguous subarray
 with an equal number of 0s and 1s.

 Input: nums = [0,1]      Output: 2
 Input: nums = [0,1,0]    Output: 2
 */
func findMaxLength(_ nums: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(findMaxLength([0, 1]), 2, "contiguous array 1")
check(findMaxLength([0, 1, 0]), 2, "contiguous array 2")
check(findMaxLength([0, 1, 1, 1, 1, 1, 0, 0, 0]), 6, "contiguous array 3")

/*
 Challenge 8: 383. Ransom Note

 Given two strings `ransomNote` and `magazine`, return true if ransomNote can be built
 from the letters in magazine. Each letter in magazine can be used only once.

 Input: ransomNote = "a",  magazine = "b"     Output: false
 Input: ransomNote = "aa", magazine = "ab"    Output: false
 Input: ransomNote = "aa", magazine = "aab"   Output: true
 */
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    // TODO: implement
    return false
}

check(canConstruct("a", "b"), false, "ransom note 1")
check(canConstruct("aa", "ab"), false, "ransom note 2")
check(canConstruct("aa", "aab"), true, "ransom note 3")

/*
 Challenge 9: 771. Jewels and Stones

 `jewels` lists the types of stones that are jewels, and `stones` lists the stones you have.
 Return how many of your stones are also jewels. Letters are case sensitive.

 Input: jewels = "aA", stones = "aAAbbbb"   Output: 3
 Input: jewels = "z",  stones = "ZZ"        Output: 0
 */
func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    // TODO: implement
    return 0
}

check(numJewelsInStones("aA", "aAAbbbb"), 3, "jewels 1")
check(numJewelsInStones("z", "ZZ"), 0, "jewels 2")

/*
 Challenge 10: 3. Longest Substring Without Repeating Characters

 Given a string `s`, return the length of the longest substring without repeating characters.

 Input: s = "abcabcbb"   Output: 3   ("abc")
 Input: s = "bbbbb"      Output: 1   ("b")
 Input: s = "pwwkew"     Output: 3   ("wke")
 */
func lengthOfLongestSubstring(_ s: String) -> Int {
    // TODO: implement
    return 0
}

check(lengthOfLongestSubstring("abcabcbb"), 3, "longest substring 1")
check(lengthOfLongestSubstring("bbbbb"), 1, "longest substring 2")
check(lengthOfLongestSubstring("pwwkew"), 3, "longest substring 3")
check(lengthOfLongestSubstring(""), 0, "longest substring (empty)")
check(lengthOfLongestSubstring("abba"), 2, "longest substring 4")
