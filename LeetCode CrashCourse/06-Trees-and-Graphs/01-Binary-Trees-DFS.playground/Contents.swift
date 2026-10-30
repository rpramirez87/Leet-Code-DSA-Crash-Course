//: # Binary Trees — DFS
//: Chapter: 06-Trees-and-Graphs
import Foundation

func maxDepth(_ root: TreeNode?) -> Int {
    // TODO: implement
    return 0
}

func hasPathSum(_ root: TreeNode?, _ target: Int) -> Bool {
    // TODO: implement
    return false
}

let tree = TreeNode.make([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1])
print(tree!)
check(maxDepth(tree), 4, "max depth")
check(hasPathSum(tree, 22), true, "path sum 22")
