import CoreFoundation

func measureBlock(block: () -> Void) {
    let startTime = CFAbsoluteTimeGetCurrent()
    block()
    let endTime = CFAbsoluteTimeGetCurrent()
    print("time is \(endTime - startTime)")
}

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for (firstIndex, firstItem) in nums.enumerated() {
            for (fakeSecondIndex, secondItem) in nums[(firstIndex + 1)..<nums.count].enumerated() {
                if firstItem + secondItem == target  {
                    return [firstIndex, firstIndex + 1 + fakeSecondIndex]
                }
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

