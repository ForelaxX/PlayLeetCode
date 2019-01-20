class MyQueue {
    
    var array: [Int]
    
    /** Initialize your data structure here. */
    init() {
        array = [];
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        array.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        let first = peek()
        array.remove(at: 0)
        return first
    }
    
    /** Get the front element. */
    func peek() -> Int {
        let first = array.first!
        return first
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        if array.count == 0 {
            return true
        }
        return false
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

