//: Playground - noun: a place where people can play

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count == 0 {
            return ""
        }
        
        func isPalindrome(string : String) -> Bool {
            if string == String(string.reversed()) {
                return true
            }
            return false
        }
        
        var subStringLength = s.count
        var maxOffset = s.count - subStringLength
        
        repeat {
            var offSet = 0
            repeat {
                let start = s.startIndex
                let range = s.index(start, offsetBy: offSet)...s.index(start, offsetBy: offSet + subStringLength - 1)
                if isPalindrome(string: String(s[range])) {
                    return String(s[range])
                }
                offSet += 1
            } while offSet <= maxOffset
            subStringLength -= 1
            maxOffset = s.count - subStringLength
        } while subStringLength > 0
        return ""
    }
}

let s = Solution()
//s.longestPalindrome("babad") == "bab"
s.longestPalindrome("abb") == "bb"

