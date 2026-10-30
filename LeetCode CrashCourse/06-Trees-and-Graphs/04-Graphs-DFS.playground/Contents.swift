//: # Graphs — DFS
//: Chapter: 06-Trees-and-Graphs
import Foundation

// Number of connected components in an undirected graph
// Hint: buildGraph(n, edges) gives you an adjacency list.
func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

// Number of Islands — grid as an implicit graph
func numIslands(_ grid: [[Character]]) -> Int {
    // TODO: implement
    return 0
}

check(countComponents(5, [[0, 1], [1, 2], [3, 4]]), 2, "components")
check(numIslands([
    ["1", "1", "0", "0", "0"],
    ["1", "1", "0", "0", "0"],
    ["0", "0", "1", "0", "0"],
    ["0", "0", "0", "1", "1"],
]), 3, "islands")
