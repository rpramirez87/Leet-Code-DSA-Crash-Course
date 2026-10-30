import Foundation

// Shared helpers for every lesson playground.
// Everything here must be `public` so the playground page can see it.

// MARK: - Testing

/// Prints ✅ / ❌ comparing `actual` against `expected`.
@discardableResult
public func check<T: Equatable>(_ actual: T, _ expected: T, _ label: String = "", line: UInt = #line) -> Bool {
    let ok = actual == expected
    let name = label.isEmpty ? "line \(line)" : label
    if ok {
        print("✅ \(name)")
    } else {
        print("❌ \(name) — expected \(expected), got \(actual)")
    }
    return ok
}

/// Runs `block`, prints how long it took, and returns its result.
@discardableResult
public func timed<T>(_ label: String = "elapsed", _ block: () -> T) -> T {
    let start = DispatchTime.now().uptimeNanoseconds
    let result = block()
    let ms = Double(DispatchTime.now().uptimeNanoseconds - start) / 1_000_000
    print("⏱ \(label): \(String(format: "%.3f", ms)) ms")
    return result
}

// MARK: - Linked list

public final class ListNode: CustomStringConvertible {
    public var val: Int
    public var next: ListNode?

    public init(_ val: Int, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }

    /// `ListNode.make([1, 2, 3])` -> 1 -> 2 -> 3
    public static func make(_ values: [Int]) -> ListNode? {
        let dummy = ListNode(0)
        var tail = dummy
        for v in values {
            let node = ListNode(v)
            tail.next = node
            tail = node
        }
        return dummy.next
    }

    /// Values from this node to the end (stops after 10_000 nodes to survive cycles).
    public var array: [Int] {
        var out: [Int] = []
        var node: ListNode? = self
        while let n = node, out.count < 10_000 {
            out.append(n.val)
            node = n.next
        }
        return out
    }

    public var description: String { array.map(String.init).joined(separator: " -> ") }
}

// MARK: - Binary tree

public final class TreeNode: CustomStringConvertible {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?

    public init(_ val: Int, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }

    /// Builds a tree from LeetCode-style level order: `TreeNode.make([3, 9, 20, nil, nil, 15, 7])`
    public static func make(_ values: [Int?]) -> TreeNode? {
        guard let first = values.first, let rootVal = first else { return nil }
        let root = TreeNode(rootVal)
        var queue = [root]
        var head = 0
        var i = 1
        while head < queue.count && i < values.count {
            let node = queue[head]
            head += 1
            if i < values.count, let v = values[i] {
                node.left = TreeNode(v)
                queue.append(node.left!)
            }
            i += 1
            if i < values.count, let v = values[i] {
                node.right = TreeNode(v)
                queue.append(node.right!)
            }
            i += 1
        }
        return root
    }

    /// Level-order values with `nil` gaps, trailing `nil`s trimmed (inverse of `make`).
    public var array: [Int?] {
        var out: [Int?] = []
        var queue: [TreeNode?] = [self]
        var head = 0
        while head < queue.count {
            let node = queue[head]
            head += 1
            out.append(node?.val)
            if let node {
                queue.append(node.left)
                queue.append(node.right)
            }
        }
        while out.last == .some(nil) { out.removeLast() }
        return out
    }

    public var description: String {
        "[" + array.map { $0.map(String.init) ?? "nil" }.joined(separator: ", ") + "]"
    }
}

// MARK: - Graph

/// Adjacency list for nodes `0..<n` from an edge list.
public func buildGraph(_ n: Int, _ edges: [[Int]], directed: Bool = false) -> [[Int]] {
    var graph = Array(repeating: [Int](), count: n)
    for e in edges {
        graph[e[0]].append(e[1])
        if !directed { graph[e[1]].append(e[0]) }
    }
    return graph
}

// MARK: - Heap (Swift has no built-in priority queue)

/// Binary heap. `Heap<Int>(<)` is a min-heap, `Heap<Int>(>)` is a max-heap.
public struct Heap<T> {
    private var items: [T] = []
    private let areSorted: (T, T) -> Bool

    public init(_ areSorted: @escaping (T, T) -> Bool) {
        self.areSorted = areSorted
    }

    public init(_ values: [T], _ areSorted: @escaping (T, T) -> Bool) {
        self.areSorted = areSorted
        for v in values { push(v) }
    }

    public var count: Int { items.count }
    public var isEmpty: Bool { items.isEmpty }
    public var peek: T? { items.first }

    public mutating func push(_ value: T) {
        items.append(value)
        var child = items.count - 1
        while child > 0 {
            let parent = (child - 1) / 2
            guard areSorted(items[child], items[parent]) else { break }
            items.swapAt(child, parent)
            child = parent
        }
    }

    @discardableResult
    public mutating func pop() -> T? {
        guard !items.isEmpty else { return nil }
        items.swapAt(0, items.count - 1)
        let top = items.removeLast()
        var parent = 0
        while true {
            let left = 2 * parent + 1, right = left + 1
            var best = parent
            if left < items.count && areSorted(items[left], items[best]) { best = left }
            if right < items.count && areSorted(items[right], items[best]) { best = right }
            if best == parent { break }
            items.swapAt(parent, best)
            parent = best
        }
        return top
    }
}
