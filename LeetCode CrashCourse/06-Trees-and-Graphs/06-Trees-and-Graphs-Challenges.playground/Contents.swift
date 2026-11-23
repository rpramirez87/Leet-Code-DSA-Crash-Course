//: # Trees and Graphs Challenges
//: Chapter: 06-Trees-and-Graphs
//:
//: Practice problems for binary tree DFS/BFS, binary search trees, and graph DFS/BFS.
//: Build trees with `TreeNode.make([3, 9, 20, nil, nil, 15, 7])` (LeetCode level order)
//: and graphs with `buildGraph(n, edges)`.
//: Write each solution, then run the playground — each challenge's tests are right under it.
import Foundation

// MARK: - Binary Trees: DFS

/*
 Challenge 1: 111. Minimum Depth of Binary Tree

 Return the number of nodes along the shortest path from the root down to the nearest leaf.

 Input: root = [3,9,20,null,null,15,7]             Output: 2
 Input: root = [2,null,3,null,4,null,5,null,6]     Output: 5
 */
func minDepth(_ root: TreeNode?) -> Int {
    // TODO: implement
    return 0
}

check(minDepth(TreeNode.make([3, 9, 20, nil, nil, 15, 7])), 2, "min depth 1")
check(minDepth(TreeNode.make([2, nil, 3, nil, 4, nil, 5, nil, 6])), 5, "min depth 2")
check(minDepth(nil), 0, "min depth (empty)")

/*
 Challenge 2: 1026. Maximum Difference Between Node and Ancestor

 Find the maximum |a.val - b.val| where node a is an ancestor of node b.

 Input: root = [8,3,10,1,6,null,14,null,null,4,7,13]   Output: 7   (|8 - 1|)
 Input: root = [1,null,2,null,0,3]                     Output: 3
 */
func maxAncestorDiff(_ root: TreeNode?) -> Int {
    // TODO: implement
    return 0
}

check(maxAncestorDiff(TreeNode.make([8, 3, 10, 1, 6, nil, 14, nil, nil, 4, 7, 13])), 7, "max ancestor diff 1")
check(maxAncestorDiff(TreeNode.make([1, nil, 2, nil, 0, 3])), 3, "max ancestor diff 2")

/*
 Challenge 3: 543. Diameter of Binary Tree

 The diameter is the number of edges on the longest path between any two nodes.
 The path may or may not pass through the root.

 Input: root = [1,2,3,4,5]   Output: 3   ([4,2,1,3] or [5,2,1,3])
 Input: root = [1,2]         Output: 1
 */
func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    // TODO: implement
    return 0
}

check(diameterOfBinaryTree(TreeNode.make([1, 2, 3, 4, 5])), 3, "diameter 1")
check(diameterOfBinaryTree(TreeNode.make([1, 2])), 1, "diameter 2")

// MARK: - Binary Trees: BFS

/*
 Challenge 4: 1302. Deepest Leaves Sum

 Return the sum of the values of the deepest leaves.

 Input: root = [1,2,3,4,5,null,6,7,null,null,null,null,8]   Output: 15
 */
func deepestLeavesSum(_ root: TreeNode?) -> Int {
    // TODO: implement
    return 0
}

check(deepestLeavesSum(TreeNode.make([1, 2, 3, 4, 5, nil, 6, 7, nil, nil, nil, nil, 8])), 15, "deepest leaves 1")
check(deepestLeavesSum(TreeNode.make([6, 7, 8, 2, 7, 1, 3, 9, nil, 1, 4, nil, nil, nil, 5])), 19, "deepest leaves 2")

/*
 Challenge 5: 103. Binary Tree Zigzag Level Order Traversal

 Return the level order traversal of the node values, alternating direction:
 left to right, then right to left for the next level, and so on.

 Input: root = [3,9,20,null,null,15,7]   Output: [[3],[20,9],[15,7]]
 Input: root = [1]                       Output: [[1]]
 */
func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
    // TODO: implement
    return []
}

check(zigzagLevelOrder(TreeNode.make([3, 9, 20, nil, nil, 15, 7])), [[3], [20, 9], [15, 7]], "zigzag 1")
check(zigzagLevelOrder(TreeNode.make([1])), [[1]], "zigzag 2")
check(zigzagLevelOrder(nil), [], "zigzag (empty)")

/*
 Challenge 6: 199. Binary Tree Right Side View

 Imagine standing on the right side of the tree. Return the values of the nodes you can see,
 from top to bottom.

 Input: root = [1,2,3,null,5,null,4]   Output: [1,3,4]
 Input: root = [1,null,3]              Output: [1,3]
 */
func rightSideView(_ root: TreeNode?) -> [Int] {
    // TODO: implement
    return []
}

check(rightSideView(TreeNode.make([1, 2, 3, nil, 5, nil, 4])), [1, 3, 4], "right side view 1")
check(rightSideView(TreeNode.make([1, nil, 3])), [1, 3], "right side view 2")
check(rightSideView(TreeNode.make([1, 2, 3, 4])), [1, 3, 4], "right side view 3")

// MARK: - Binary Search Trees

/*
 Challenge 7: 701. Insert into a Binary Search Tree

 Insert `val` into the BST (it is not already in the tree) and return the root.
 Insert it as a new leaf.

 Input: root = [4,2,7,1,3], val = 5   Output: [4,2,7,1,3,5]
 */
func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    // TODO: implement
    return nil
}

check(insertIntoBST(TreeNode.make([4, 2, 7, 1, 3]), 5)?.array ?? [], [4, 2, 7, 1, 3, 5], "insert into BST 1")
check(insertIntoBST(nil, 5)?.array ?? [], [5], "insert into BST (empty)")

/*
 Challenge 8: 530. Minimum Absolute Difference in BST

 Return the minimum absolute difference between the values of any two different nodes.

 Input: root = [4,2,6,1,3]                 Output: 1
 Input: root = [1,0,48,null,null,12,49]    Output: 1
 */
func getMinimumDifference(_ root: TreeNode?) -> Int {
    // TODO: implement
    return 0
}

check(getMinimumDifference(TreeNode.make([4, 2, 6, 1, 3])), 1, "min BST difference 1")
check(getMinimumDifference(TreeNode.make([1, 0, 48, nil, nil, 12, 49])), 1, "min BST difference 2")

/*
 Challenge 9: 98. Validate Binary Search Tree

 Return true if the tree is a valid BST: every node's left subtree holds only smaller values,
 its right subtree only larger values, and both subtrees are BSTs.

 Input: root = [2,1,3]                    Output: true
 Input: root = [5,1,4,null,null,3,6]      Output: false
 */
func isValidBST(_ root: TreeNode?) -> Bool {
    // TODO: implement
    return false
}

check(isValidBST(TreeNode.make([2, 1, 3])), true, "valid BST 1")
check(isValidBST(TreeNode.make([5, 1, 4, nil, nil, 3, 6])), false, "valid BST 2")
check(isValidBST(TreeNode.make([5, 4, 6, nil, nil, 3, 7])), false, "valid BST 3 (3 is under 6 but less than 5)")

/*
 Challenge 10: 270. Closest Binary Search Tree Value

 Given a BST and a `target`, return the value in the BST closest to target.
 If there is a tie, return the smaller value.

 Input: root = [4,2,5,1,3], target = 3.714286   Output: 4
 Input: root = [1], target = 4.428571           Output: 1
 */
func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
    // TODO: implement
    return 0
}

check(closestValue(TreeNode.make([4, 2, 5, 1, 3]), 3.714286), 4, "closest BST value 1")
check(closestValue(TreeNode.make([1]), 4.428571), 1, "closest BST value 2")
check(closestValue(TreeNode.make([4, 2, 5, 1, 3]), 3.5), 3, "closest BST value (tie -> smaller)")

// MARK: - Graphs: DFS

/*
 Challenge 11: 1971. Find if Path Exists in Graph

 Given an undirected graph with n nodes (0...n-1) and an edge list, return true if
 there is a path from `source` to `destination`.

 Input: n = 3, edges = [[0,1],[1,2],[2,0]], source = 0, destination = 2               Output: true
 Input: n = 6, edges = [[0,1],[0,2],[3,5],[5,4],[4,3]], source = 0, destination = 5   Output: false
 */
func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
    // TODO: implement
    return false
}

check(validPath(3, [[0, 1], [1, 2], [2, 0]], 0, 2), true, "path exists 1")
check(validPath(6, [[0, 1], [0, 2], [3, 5], [5, 4], [4, 3]], 0, 5), false, "path exists 2")

/*
 Challenge 12: 323. Number of Connected Components in an Undirected Graph

 Given n nodes and an edge list of an undirected graph, return the number of connected components.

 Input: n = 5, edges = [[0,1],[1,2],[3,4]]          Output: 2
 Input: n = 5, edges = [[0,1],[1,2],[2,3],[3,4]]    Output: 1
 */
func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

check(countComponents(5, [[0, 1], [1, 2], [3, 4]]), 2, "connected components 1")
check(countComponents(5, [[0, 1], [1, 2], [2, 3], [3, 4]]), 1, "connected components 2")

/*
 Challenge 13: 695. Max Area of Island

 In a binary grid, an island is a group of 1s connected 4-directionally.
 Return the area of the largest island, or 0 if there is none.

 Input: grid = [[0,0,0,0,0,0,0,0]]   Output: 0
 */
func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

let island = [
    [0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
    [0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0],
    [0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0],
]
check(maxAreaOfIsland(island), 6, "max area of island 1")
check(maxAreaOfIsland([[0, 0, 0, 0, 0, 0, 0, 0]]), 0, "max area of island 2")

/*
 Challenge 14: 2368. Reachable Nodes With Restrictions

 An undirected tree has n nodes and n - 1 edges. Some nodes are `restricted`.
 Return the maximum number of nodes you can reach from node 0 without visiting a restricted node.
 Node 0 is never restricted.

 Input: n = 7, edges = [[0,1],[1,2],[3,1],[4,0],[0,5],[5,6]], restricted = [4,5]   Output: 4
 */
func reachableNodes(_ n: Int, _ edges: [[Int]], _ restricted: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(reachableNodes(7, [[0, 1], [1, 2], [3, 1], [4, 0], [0, 5], [5, 6]], [4, 5]), 4, "reachable nodes 1")
check(reachableNodes(7, [[0, 1], [0, 2], [0, 5], [0, 4], [3, 2], [6, 5]], [4, 2, 1]), 3, "reachable nodes 2")

/*
 Challenge 15: 841. Keys and Rooms

 There are n rooms; only room 0 is unlocked. rooms[i] lists the keys found in room i.
 Return true if you can visit every room.

 Input: rooms = [[1],[2],[3],[]]            Output: true
 Input: rooms = [[1,3],[3,0,1],[2],[0]]     Output: false
 */
func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    // TODO: implement
    return false
}

check(canVisitAllRooms([[1], [2], [3], []]), true, "keys and rooms 1")
check(canVisitAllRooms([[1, 3], [3, 0, 1], [2], [0]]), false, "keys and rooms 2")

// MARK: - Graphs: BFS

/*
 Challenge 16: 1091. Shortest Path in Binary Matrix

 In an n x n binary grid, return the length (number of cells) of the shortest clear path
 from the top-left to the bottom-right cell, or -1. A clear path only visits 0 cells and
 moves 8-directionally.

 Input: grid = [[0,1],[1,0]]                  Output: 2
 Input: grid = [[0,0,0],[1,1,0],[1,1,0]]      Output: 4
 Input: grid = [[1,0,0],[1,1,0],[1,1,0]]      Output: -1
 */
func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

check(shortestPathBinaryMatrix([[0, 1], [1, 0]]), 2, "shortest path binary matrix 1")
check(shortestPathBinaryMatrix([[0, 0, 0], [1, 1, 0], [1, 1, 0]]), 4, "shortest path binary matrix 2")
check(shortestPathBinaryMatrix([[1, 0, 0], [1, 1, 0], [1, 1, 0]]), -1, "shortest path binary matrix 3")

/*
 Challenge 17: 1926. Nearest Exit from Entrance in Maze

 `maze` has empty cells '.' and walls '+'. From `entrance` = [row, col], move up/down/left/right.
 An exit is an empty cell on the border that is not the entrance itself.
 Return the number of steps in the shortest path to the nearest exit, or -1.

 Input: maze = [["+","+",".","+"],[".",".",".","+"],["+","+","+","."]], entrance = [1,2]   Output: 1
 Input: maze = [[".","+"]], entrance = [0,0]                                              Output: -1
 */
func nearestExit(_ maze: [[Character]], _ entrance: [Int]) -> Int {
    // TODO: implement
    return 0
}

check(nearestExit([["+", "+", ".", "+"], [".", ".", ".", "+"], ["+", "+", "+", "."]], [1, 2]), 1, "nearest exit 1")
check(nearestExit([["+", "+", "+"], [".", ".", "."], ["+", "+", "+"]], [1, 0]), 2, "nearest exit 2")
check(nearestExit([[".", "+"]], [0, 0]), -1, "nearest exit 3")

/*
 Challenge 18: 909. Snakes and Ladders

 On an n x n board, squares are numbered 1...n² in a boustrophedon (zigzag) order starting from
 the bottom-left. Each move you roll a die and move 1-6 squares; if you land on a square whose
 board value isn't -1, you take that snake/ladder to that square. Return the minimum number of
 moves to reach n², or -1.

 Input: board = [[-1,-1],[-1,3]]   Output: 1
 */
func snakesAndLadders(_ board: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

let snakesBoard = [
    [-1, -1, -1, -1, -1, -1],
    [-1, -1, -1, -1, -1, -1],
    [-1, -1, -1, -1, -1, -1],
    [-1, 35, -1, -1, 13, -1],
    [-1, -1, -1, -1, -1, -1],
    [-1, 15, -1, -1, -1, -1],
]
check(snakesAndLadders(snakesBoard), 4, "snakes and ladders 1")
check(snakesAndLadders([[-1, -1], [-1, 3]]), 1, "snakes and ladders 2")

/*
 Challenge 19: 433. Minimum Genetic Mutation

 A gene is an 8-character string of 'A', 'C', 'G', 'T'. One mutation changes one character, and
 every intermediate gene must be in `bank`. Return the minimum number of mutations from
 `startGene` to `endGene`, or -1.

 Input: startGene = "AACCGGTT", endGene = "AACCGGTA", bank = ["AACCGGTA"]   Output: 1
 */
func minMutation(_ startGene: String, _ endGene: String, _ bank: [String]) -> Int {
    // TODO: implement
    return 0
}

check(minMutation("AACCGGTT", "AACCGGTA", ["AACCGGTA"]), 1, "genetic mutation 1")
check(minMutation("AACCGGTT", "AAACGGTA", ["AACCGGTA", "AACCGCTA", "AAACGGTA"]), 2, "genetic mutation 2")
check(minMutation("AACCGGTT", "AACCGGTA", []), -1, "genetic mutation 3")

/*
 Challenge 20: 1306. Jump Game III

 Starting at index `start` of `arr`, from index i you can jump to i + arr[i] or i - arr[i]
 (staying inside the array). Return true if you can reach any index with value 0.

 Input: arr = [4,2,3,0,3,1,2], start = 5   Output: true
 Input: arr = [3,0,2,1,2], start = 2       Output: false
 */
func canReach(_ arr: [Int], _ start: Int) -> Bool {
    // TODO: implement
    return false
}

check(canReach([4, 2, 3, 0, 3, 1, 2], 5), true, "jump game III 1")
check(canReach([4, 2, 3, 0, 3, 1, 2], 0), true, "jump game III 2")
check(canReach([3, 0, 2, 1, 2], 2), false, "jump game III 3")
