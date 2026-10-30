//: # Tries
//: Chapter: 12-Bonus
import Foundation

final class Trie {
    // TODO: add a node type and a root

    func insert(_ word: String) {
        // TODO: implement
    }

    func search(_ word: String) -> Bool {
        // TODO: implement
        return false
    }

    func startsWith(_ prefix: String) -> Bool {
        // TODO: implement
        return false
    }
}

let trie = Trie()
trie.insert("apple")
check(trie.search("apple"), true, "search apple")
check(trie.search("app"), false, "search app")
check(trie.startsWith("app"), true, "prefix app")
