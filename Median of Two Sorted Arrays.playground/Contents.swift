//: Playground - noun: a place where people can play

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var newNums : Array<Int> = []
        var localNums1 = Array(nums1)
        var localNums2 = Array(nums2)
        if nums1.count == 0 && nums2.count == 0 {
            return 0
        }
        repeat {
            if let nums1FirstEle = localNums1.first, let nums2FirstEle = localNums2.first {
                if nums1FirstEle < nums2FirstEle {
                    newNums.append(nums1FirstEle)
                    localNums1.remove(at: 0)
                } else {
                    newNums.append(nums2FirstEle)
                    localNums2.remove(at: 0)
                }
            } else if let nums1FirstEle = localNums1.first {
                newNums.append(nums1FirstEle)
                localNums1.remove(at: 0)
            } else if let nums2FirstEle = localNums2.first {
                newNums.append(nums2FirstEle)
                localNums2.remove(at: 0)
            } else {
                print("wrong")
            }
        } while localNums1.count > 0 || localNums2.count > 0
        
        var rtValue : Double = 0
        if newNums.count % 2 == 0 {
            rtValue =  Double((newNums[newNums.count / 2 - 1] + newNums[newNums.count / 2])) / 2
        } else {
            rtValue = Double(newNums[newNums.count / 2])
        }
        return rtValue
    }
}

let s = Solution()

let nums1 = [1, 3]
let nums2 = [2]

s.findMedianSortedArrays(nums1, nums2) == 2
s.findMedianSortedArrays([1, 2], [3, 4]) == 2.5
