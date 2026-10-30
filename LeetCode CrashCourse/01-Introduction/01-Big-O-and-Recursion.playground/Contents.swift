//: # Big O and Recursion
//: Chapter: 01-Introduction
import Foundation

// O(2^n) — every call branches twice
func fibNaive(_ n: Int) -> Int {
    // TODO: implement
    return 0
}

// O(n) — memoization caches each subproblem once
func fibMemo(_ n: Int) -> Int {
    // TODO: implement
    return 0
}

check(fibNaive(10), 55, "naive fib(10)")
check(fibMemo(50), 12_586_269_025, "memo fib(50)")
timed("naive fib(25)") { fibNaive(25) }
timed("memo fib(25)") { fibMemo(25) }
