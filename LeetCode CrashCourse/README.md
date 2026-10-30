# LeetCode Interview Crash Course — Swift Playgrounds

One folder per chapter of LeetCode's *Interview Crash Course: Data Structures and Algorithms*,
one playground per lesson. Every playground is self-contained, so each one runs on its own.

## Open it

Double-click **`CrashCourse.xcworkspace`** (or `open CrashCourse.xcworkspace`).
Select a playground in the navigator and press **⇧⌘↩** (Run) — results print in the debug console.

You can also double-click any single `.playground` to open it by itself.

## Add a lesson

```bash
scripts/new_lesson.sh 2 "Sliding Window Fixed Size"
```

This creates `02-Arrays-and-Strings/04-Sliding-Window-Fixed-Size.playground` from
`Templates/Lesson.playground` and adds it to the workspace (Xcode picks up the change automatically).
The chapter can be a number (`2`) or a folder name (`02-Arrays-and-Strings`).

If you add, rename or delete a playground by hand in Finder, run:

```bash
scripts/sync_workspace.sh
```

## Run from the terminal

```bash
scripts/run_lesson.sh 02-Arrays-and-Strings/01-Two-Pointers.playground
scripts/run_lesson.sh --all
```

## Helpers available in every lesson

Each playground has `Sources/Helpers.swift` (copied from the template):

| Helper | Use |
| --- | --- |
| `check(actual, expected, "label")` | Prints ✅ / ❌ |
| `timed("label") { ... }` | Prints run time |
| `ListNode`, `ListNode.make([1,2,3])`, `.array` | Linked lists |
| `TreeNode`, `TreeNode.make([3, 9, 20, nil, nil, 15, 7])`, `.array` | Binary trees (LeetCode level order) |
| `buildGraph(n, edges, directed:)` | Adjacency list |
| `Heap<Int>(<)` / `Heap<Int>(>)` | Min / max heap (`push`, `pop`, `peek`) |

To change helpers for future lessons, edit `Templates/Lesson.playground/Sources/Helpers.swift`.

## Chapters

| Folder | Chapter |
| --- | --- |
| `01-Introduction` | Big O, recursion |
| `02-Arrays-and-Strings` | Two pointers, sliding window, prefix sum |
| `03-Hashing` | Checking existence, counting |
| `04-Linked-Lists` | Fast and slow pointers, reversing |
| `05-Stacks-and-Queues` | Stacks, queues, monotonic stacks/queues |
| `06-Trees-and-Graphs` | Binary trees DFS/BFS, BSTs, graphs DFS/BFS, implicit graphs |
| `07-Heaps` | Heaps, top k |
| `08-Greedy` | Greedy algorithms |
| `09-Binary-Search` | On arrays, on solution spaces |
| `10-Backtracking` | Backtracking |
| `11-Dynamic-Programming` | 1D, multi-dimensional, matrix DP |
| `12-Bonus` | Tries, bit manipulation, and more |
