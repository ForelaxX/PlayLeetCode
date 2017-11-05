
class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var localNums1 : Array<Int>, localNums2 : Array<Int>
        if nums1.count > nums2.count {
            localNums1 = Array(nums2)
            localNums2 = Array(nums1)
        } else {
            localNums1 = Array(nums1)
            localNums2 = Array(nums2)
        }
        
        var mini = 0
        var maxi = localNums1.count
        // +1 是为了，当  count 之和是奇数的时候，maxLeft 实际上是中位数
        let halfLength = (localNums1.count + localNums2.count + 1) / 2
        // means the count of elements belongs to the left part
        var i : Int
        // means the count of elements belongs to the left part
        var j : Int
        while mini <= maxi {
            i = (mini + maxi) / 2
            j = halfLength - i
            print("i:\(i)")
            print(j)
            if i > 0 && localNums1[i - 1] > localNums2[j] {
                maxi = i - 1
            } else if i < localNums1.count && localNums2[j - 1] > localNums1[i] {
                mini = i + 1
            } else {
                // perfect
                var maxLeft : Int
                if i == 0 {
                    maxLeft = localNums2[j - 1]
                } else if j == 0 {
                    maxLeft = localNums1[i - 1]
                } else {
                    maxLeft = max(localNums1[i - 1], localNums2[j - 1])
                }
                
                if (localNums1.count + localNums2.count) % 2 == 1 {
                    return Double(maxLeft)
                }
                
                var minRight : Int
                if i == localNums1.count  {
                    minRight = localNums2[j]
                } else if j == localNums2.count {
                    minRight = localNums1[i]
                } else {
                    minRight = min(localNums1[i], localNums2[j])
                }
                print(maxLeft)
                print(minRight)
                return Double(maxLeft + minRight) / 2.0
            }
        }
        return 0
    }
}

let s = Solution()

let nums1 = [1, 3]
let nums2 = [2]

s.findMedianSortedArrays(nums1, nums2) == 2
s.findMedianSortedArrays([1, 2], [3, 4]) == 2.5
s.findMedianSortedArrays([4,5], [1,2,3]) == 3

