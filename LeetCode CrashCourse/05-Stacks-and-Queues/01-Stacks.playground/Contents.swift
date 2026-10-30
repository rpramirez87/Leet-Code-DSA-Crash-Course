//: # Stacks
//: Chapter: 05-Stacks-and-Queues
import Foundation

// Valid Parentheses — a Swift Array works as a stack (append / popLast)
func isValid(_ s: String) -> Bool {
    // TODO: implement
    return false
}

check(isValid("()[]{}"), true, "()[]{}")
check(isValid("([)]"), false, "([)]")
check(isValid("{[]}"), true, "{[]}")
