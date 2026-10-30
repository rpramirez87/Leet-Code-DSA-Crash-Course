//: # Queues
//: Chapter: 05-Stacks-and-Queues
import Foundation

// Swift has no Deque in the standard library. Use an array + head index
// so dequeue stays O(1) instead of removeFirst()'s O(n).
struct Queue<T> {
    // TODO: add storage

    var isEmpty: Bool {
        // TODO: implement
        return true
    }

    var count: Int {
        // TODO: implement
        return 0
    }

    var front: T? {
        // TODO: implement
        return nil
    }

    mutating func enqueue(_ x: T) {
        // TODO: implement
    }

    mutating func dequeue() -> T? {
        // TODO: implement
        return nil
    }
}

// Number of Recent Calls: count pings in the last 3000ms
struct RecentCounter {
    // TODO: add storage (hint: a Queue<Int>)

    mutating func ping(_ t: Int) -> Int {
        // TODO: implement
        return 0
    }
}

var counter = RecentCounter()
check([1, 100, 3001, 3002].map { counter.ping($0) }, [1, 2, 3, 3], "recent counter")
