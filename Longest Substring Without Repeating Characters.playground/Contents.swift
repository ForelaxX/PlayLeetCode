class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        // 第一个条件是，字符串内部不能有重复的
        // 所以基本思路就是，遍历 string，遍历的过程中不断把字符放到一个 hash 里头
        // 在接下来的遍历过程中如果发现有重复的，就清空 hash，继续遍历
        if s.count == 0 {
            return 0
        }
        var lengthOfLongestSubstring = 0
        var firstExistIndexArray : [Int] = []
        var characterPreviousIndexDict : [Character : Int] = [:]
        var previousIndex = 0
        var startIndex = 0
        for (index, character) in s.enumerated() {
            if let characterIndex = characterPreviousIndexDict[character] {
                previousIndex = characterIndex
            } else {
                previousIndex = index
            }
            characterPreviousIndexDict[character] = index
            if index != previousIndex && startIndex <= previousIndex {
                startIndex = previousIndex + 1
            } else {
                lengthOfLongestSubstring = max(lengthOfLongestSubstring, index - startIndex + 1)
            }
            //print("\(s[s.index(s.startIndex, offsetBy: index)]):\(index):\(previouseIndex), start index: (startIndex), length: \(lengthOfLongestSubstring)")
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
