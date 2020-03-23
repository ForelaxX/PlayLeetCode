class Solution {
    func strStr(_ target: String, _ pattern: String) -> Int {
        // long short
        // short long
        // empty noEmpty
        // noEmpty empty
        // empty empty
        if pattern.isEmpty {
            return 0
        }
        if pattern.count > target.count {
            return -1
        }
        var i = 0
        var j = 0
        for hayIndex in 0...(target.count - pattern.count) {
            i = hayIndex
            j = 0
            var hayCharacter: Character
            var needleCharacter: Character
            repeat {
                hayCharacter = target[target.index(target.startIndex, offsetBy: i)]
                needleCharacter = pattern[pattern.index(pattern.startIndex, offsetBy: j)]
                i += 1
                j += 1
            } while j < pattern.count && hayCharacter == needleCharacter
            if j == pattern.count && hayCharacter == needleCharacter {
                return hayIndex
            }
        }
        return -1
    }
    
    func buildPartialMatchTable(pattern: String) -> [String] {
        return (0...(pattern.count)).reduce([], { (result, index) -> [] in
            
        })
    }
}

var s = Solution()
s.strStr("mississippi", "issip")




