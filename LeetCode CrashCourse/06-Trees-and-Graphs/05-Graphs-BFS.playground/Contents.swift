//: # Graphs — BFS
//: Chapter: 06-Trees-and-Graphs
import Foundation

// Shortest path in a binary matrix (8 directions), -1 if unreachable
func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
    // TODO: implement
    return 0
}

check(shortestPathBinaryMatrix([[0, 0, 0], [1, 1, 0], [1, 1, 0]]), 4, "shortest path")
check(shortestPathBinaryMatrix([[1, 0], [0, 0]]), -1, "blocked start")
