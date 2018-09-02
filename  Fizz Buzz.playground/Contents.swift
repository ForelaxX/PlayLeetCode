class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        return (1...n).map { (_ index: Int) -> String in
            if index > 5 && index % 3 == 0 && index % 5 == 0 {
              return "FizzBuzz"
            } else if index >= 3 && index % 3 == 0 {
                return "Fizz"
            } else if index >= 5 && index % 5 == 0 {
                return "Buzz"
            } else {
                return String(index)
            }
        }
    }
}
