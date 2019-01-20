import CoreFoundation

func measureBlock(block: () -> Void) {
    let startTime = CFAbsoluteTimeGetCurrent()
    block()
    let endTime = CFAbsoluteTimeGetCurrent()
    print("time is \(endTime - startTime)")
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var buffer_dict : [Int : Int] = [:]
        for index in 0..<nums.count {
            if let firstIndex = buffer_dict[nums[index]] {
                return [firstIndex, index]
            } else {
                buffer_dict[target - nums[index]] = index
            }
        }
        return [0, 0]
    }
}

let s = Solution()

var bigArray = (0...12598).map { $0 * 2 }

measureBlock {
    s.twoSum(bigArray, 16021)
}

