//: # Binary Search Trees
//: Chapter: 06-Trees-and-Graphs
import Foundation

func isValidBST(_ root: TreeNode?) -> Bool {
    // TODO: implement
    return false
}

func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    // TODO: implement
    return nil
}

check(isValidBST(TreeNode.make([2, 1, 3])), true, "valid BST")
check(isValidBST(TreeNode.make([5, 1, 4, nil, nil, 3, 6])), false, "invalid BST")
check(insertIntoBST(TreeNode.make([4, 2, 7, 1, 3]), 5)?.array,
      [4, 2, 7, 1, 3, 5], "insert 5")
