class Stack {
    var array: [Int]
    
    init() {
        array = []
    }
    
    func push(x: Int) -> Void {
        array.append(x)
    }
    
    func pop() -> Int? {
        if let last = top() {
            array.removeLast()
            return last
        }
        return nil
    }
    
    func top() -> Int? {
        return array.last
    }
}

class MyQueue {
    
    let stackOne: Stack = Stack()
    let stackTwo: Stack = Stack()
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        while let last = stackOne.pop() {
            stackTwo.push(x: last)
        }
        stackOne.push(x: x)
        while let last = stackTwo.pop() {
            stackOne.push(x: last)
        }
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        return stackOne.pop()!
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return stackOne.top()!
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        if let _ = stackOne.top() {
            return false
        }
        return true
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */

