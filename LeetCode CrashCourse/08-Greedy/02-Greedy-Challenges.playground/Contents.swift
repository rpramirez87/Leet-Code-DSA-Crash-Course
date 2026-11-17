//: # Greedy Challenges
//: Chapter: 08-Greedy
//:
//: Practice problems for greedy algorithms.
//: Write each solution, then run the playground — the tests are at the bottom.
import Foundation

/*
 Challenge 1: 2294. Partition Array Such That Maximum Difference Is K

 Split `nums` into the fewest subsequences such that in each one, max - min <= k.
 Return the minimum number of subsequences.

 Input: nums = [3,6,1,2,5], k = 2   Output: 2   ([3,1,2] and [6,5])
 Input: nums = [1,2,3], k = 1       Output: 2
 Input: nums = [2,2,4,5], k = 0     Output: 3
 */
func partitionArray(_ nums: [Int], _ k: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 2: 881. Boats to Save People

 `people[i]` is a person's weight. Each boat carries at most 2 people with total weight <= limit.
 Return the minimum number of boats needed.

 Input: people = [1,2], limit = 3       Output: 1
 Input: people = [3,2,2,1], limit = 3   Output: 3
 Input: people = [3,5,3,4], limit = 5   Output: 4
 */
func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 3: 1323. Maximum 69 Number

 `num` contains only the digits 6 and 9. Change at most one digit (6 -> 9 or 9 -> 6)
 and return the maximum number you can get.

 Input: num = 9669   Output: 9969
 Input: num = 9996   Output: 9999
 Input: num = 9999   Output: 9999
 */
func maximum69Number(_ num: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 4: 1710. Maximum Units on a Truck

 `boxTypes[i] = [numberOfBoxes, unitsPerBox]`. The truck carries at most `truckSize` boxes.
 Return the maximum total number of units you can load.

 Input: boxTypes = [[1,3],[2,2],[3,1]], truckSize = 4                Output: 8
 Input: boxTypes = [[5,10],[2,5],[4,7],[3,9]], truckSize = 10        Output: 91
 */
func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 5: 1196. How Many Apples Can You Put into the Basket

 `weight[i]` is the weight of apple i. The basket holds at most 5000 units of weight.
 Return the maximum number of apples you can put in the basket.

 Input: weight = [100,200,150,1000]            Output: 4
 Input: weight = [900,950,800,1000,700,800]    Output: 5
 */
func maxNumberOfApples(_ weight: [Int]) -> Int {
    // TODO: implement
    return 0
}

/*
 Challenge 6: 1338. Reduce Array Size to The Half

 Choose a set of integers and remove all their occurrences from `arr`.
 Return the minimum size of the set so that at least half of the elements are removed.

 Input: arr = [3,3,3,3,5,5,5,2,2,7]   Output: 2   (remove {3, 7} or {3, 5}, ...)
 Input: arr = [7,7,7,7,7,7]           Output: 1
 */
func minSetSize(_ arr: [Int]) -> Int {
    // TODO: implement
    return 0
}

// MARK: - Tests

check(partitionArray([3, 6, 1, 2, 5], 2), 2, "partition array 1")
check(partitionArray([1, 2, 3], 1), 2, "partition array 2")
check(partitionArray([2, 2, 4, 5], 0), 3, "partition array 3")

check(numRescueBoats([1, 2], 3), 1, "rescue boats 1")
check(numRescueBoats([3, 2, 2, 1], 3), 3, "rescue boats 2")
check(numRescueBoats([3, 5, 3, 4], 5), 4, "rescue boats 3")

check(maximum69Number(9669), 9969, "maximum 69 number 1")
check(maximum69Number(9996), 9999, "maximum 69 number 2")
check(maximum69Number(9999), 9999, "maximum 69 number 3")

check(maximumUnits([[1, 3], [2, 2], [3, 1]], 4), 8, "maximum units 1")
check(maximumUnits([[5, 10], [2, 5], [4, 7], [3, 9]], 10), 91, "maximum units 2")

check(maxNumberOfApples([100, 200, 150, 1000]), 4, "apples in basket 1")
check(maxNumberOfApples([900, 950, 800, 1000, 700, 800]), 5, "apples in basket 2")

check(minSetSize([3, 3, 3, 3, 5, 5, 5, 2, 2, 7]), 2, "reduce array size 1")
check(minSetSize([7, 7, 7, 7, 7, 7]), 1, "reduce array size 2")
