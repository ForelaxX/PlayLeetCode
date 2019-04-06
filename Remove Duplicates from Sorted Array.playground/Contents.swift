class Solution {
    // 注意：输入的数组是一个有序数组
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // 额外要求：空间复杂度是 O(1)
        var index = 1
        var deleteCount = 0
        let length = nums.count
        while index < length - deleteCount {
            if nums[index] == nums[index - 1] {
                nums.remove(at: index)
                deleteCount += 1
                index -= 1
            }
            index += 1
        }
        return length - deleteCount
    }
}

let s = Solution()
var array = [1,1,2]
s.removeDuplicates(&array)
array
