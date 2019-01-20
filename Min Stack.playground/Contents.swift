class MinStack {
    
    struct Element {
        let value: Int
        let Min: Int
    }
    
    var array: [Element]
    
    /** initialize your data structure here. */
    init() {
        array = []
    }
    
    func push(_ x: Int) {
        let min = getMin()
        var ele: Element;
        if x < min {
            ele = Element(value: x, Min: x)
        } else {
            ele = Element(value: x, Min: min)
        }
        array.append(ele)
    }
    
    func pop() {
        if let _ = array.last {
            array.popLast()
        }
    }
    
    func top() -> Int {
        if let last = array.last {
            return last.value
        }
        return 0
    }
    
    func getMin() -> Int {
        if let last = array.last {
            return last.Min
        }
        return Int.max
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

