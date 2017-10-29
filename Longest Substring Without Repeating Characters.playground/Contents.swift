class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        var lengthOfLongestSubstring = 0
        var characterPreviousIndexDict : [Character : Int] = [:]
        var startIndex = 0
        for (index, character) in s.enumerated() {
            if let previousIndex = characterPreviousIndexDict[character], startIndex <= previousIndex {
                startIndex = previousIndex + 1
            } else {
                lengthOfLongestSubstring = max(lengthOfLongestSubstring, index - startIndex + 1)
            }
//            print("\(s[s.index(s.startIndex, offsetBy: index)]):\(index):\(characterPreviousIndexDict[character]), start index: (startIndex), length: \(lengthOfLongestSubstring)")
            characterPreviousIndexDict[character] = index
        }
        return lengthOfLongestSubstring
    }
}

let s = Solution()

let stringOne = "abcabcbb"
let stringTwo = "bbbbb"
let stringThree = "pwwkew"
let stringFour = "ohvhjdml"
let stringFive = "tmmzuxt"

s.lengthOfLongestSubstring(stringOne) == 3
s.lengthOfLongestSubstring(stringTwo) == 1
s.lengthOfLongestSubstring(stringThree) == 3
s.lengthOfLongestSubstring(stringFour) == 6
s.lengthOfLongestSubstring(stringFive) == 5
