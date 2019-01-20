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
    
    func empty() -> Bool {
        if let _ = top() {
            return false
        }
        return true
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
        stackOne.push(x: x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        transfer()
        return stackTwo.pop()!
    }
    
    /** Get the front element. */
    func peek() -> Int {
        transfer()
        return stackTwo.top()!
    }
    
    private func transfer() {
        if !stackOne.empty() && stackTwo.empty() {
            while let last = stackOne.pop() {
                stackTwo.push(x: last)
            }
        }
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return stackOne.empty() && stackTwo.empty()
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

