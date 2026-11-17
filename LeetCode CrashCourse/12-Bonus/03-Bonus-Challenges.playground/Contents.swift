//: # Bonus Challenges
//: Chapter: 12-Bonus
//:
//: Practice problems for tries and bit manipulation.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

// MARK: - Tries

/*
 Challenge 1: 208. Implement Trie (Prefix Tree)

 Implement a trie with:
 - insert(word): inserts word
 - search(word): true if word was inserted
 - startsWith(prefix): true if any inserted word starts with prefix

 insert("apple"); search("apple") = true; search("app") = false; startsWith("app") = true
 insert("app");   search("app") = true
 */
class Trie {
    // TODO: add storage

    func insert(_ word: String) {
        // TODO: implement
    }

    func search(_ word: String) -> Bool {
        // TODO: implement
        return false
    }

    func startsWith(_ prefix: String) -> Bool {
        // TODO: implement
        return false
    }
}

/*
 Challenge 2: 1268. Search Suggestions System

 After each character of `searchWord` is typed, suggest at most three product names that start
 with the typed prefix. If more than three match, return the three lexicographically smallest.

 Input: products = ["mobile","mouse","moneypot","monitor","mousepad"], searchWord = "mouse"
 Output: [["mobile","moneypot","monitor"],["mobile","moneypot","monitor"],
          ["mouse","mousepad"],["mouse","mousepad"],["mouse","mousepad"]]
 */
func suggestedProducts(_ products: [String], _ searchWord: String) -> [[String]] {
    // TODO: implement
    return []
}

// MARK: - Bit Manipulation

/*
 Challenge 3: 191. Number of 1 Bits

 Return the number of set bits in the binary representation of a positive integer n.

 Input: n = 11           Output: 3   (1011)
 Input: n = 128          Output: 1
 Input: n = 2147483645   Output: 30
 */
func hammingWeight(_ n: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 4: 136. Single Number

 Every element appears twice except one. Find that single one in O(n) time and O(1) space.

 Input: nums = [2,2,1]       Output: 1
 Input: nums = [4,1,2,1,2]   Output: 4
 */
func singleNumber(_ nums: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 5: 338. Counting Bits

 Return an array `ans` of length n + 1 where ans[i] is the number of 1 bits in i.

 Input: n = 2   Output: [0,1,1]
 Input: n = 5   Output: [0,1,1,2,1,2]
 */
func countBits(_ n: Int) -> [Int] {
    // TODO: implement
    return []
}

/*
 Challenge 6: 231. Power of Two

 Return true if n is a power of two.

 Input: n = 1    Output: true
 Input: n = 16   Output: true
 Input: n = 3    Output: false
 */
func isPowerOfTwo(_ n: Int) -> Bool {
    // TODO: implement
    return false
}

/*
 Challenge 7: 461. Hamming Distance

 Return the number of bit positions where x and y differ.

 Input: x = 1, y = 4   Output: 2
 Input: x = 3, y = 1   Output: 1
 */
func hammingDistance(_ x: Int, _ y: Int) -> Int {
    // TODO: implement
    return 0
}

// MARK: - Tests

let trie = Trie()
trie.insert("apple")
check(trie.search("apple"), true, "trie search apple")
check(trie.search("app"), false, "trie search app (before insert)")
check(trie.startsWith("app"), true, "trie startsWith app")
trie.insert("app")
check(trie.search("app"), true, "trie search app (after insert)")
check(trie.startsWith("b"), false, "trie startsWith b")

check(suggestedProducts(["mobile", "mouse", "moneypot", "monitor", "mousepad"], "mouse"),
      [["mobile", "moneypot", "monitor"], ["mobile", "moneypot", "monitor"],
       ["mouse", "mousepad"], ["mouse", "mousepad"], ["mouse", "mousepad"]], "search suggestions 1")
check(suggestedProducts(["havana"], "tatiana"), [[], [], [], [], [], [], []], "search suggestions 2")

check(hammingWeight(11), 3, "number of 1 bits 1")
check(hammingWeight(128), 1, "number of 1 bits 2")
check(hammingWeight(2147483645), 30, "number of 1 bits 3")

check(singleNumber([2, 2, 1]), 1, "single number 1")
check(singleNumber([4, 1, 2, 1, 2]), 4, "single number 2")
check(singleNumber([1]), 1, "single number 3")

check(countBits(2), [0, 1, 1], "counting bits 1")
check(countBits(5), [0, 1, 1, 2, 1, 2], "counting bits 2")
check(countBits(0), [0], "counting bits 3")

check(isPowerOfTwo(1), true, "power of two 1")
check(isPowerOfTwo(16), true, "power of two 2")
check(isPowerOfTwo(3), false, "power of two 3")
check(isPowerOfTwo(0), false, "power of two 4")

check(hammingDistance(1, 4), 2, "hamming distance 1")
check(hammingDistance(3, 1), 1, "hamming distance 2")
